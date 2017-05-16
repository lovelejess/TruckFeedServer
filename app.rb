require 'sinatra'
require 'sinatra/activerecord'

class Trucks < ActiveRecord::Base
  has_many :truck_schedules, :class_name => 'TruckSchedule',  :foreign_key => 'truck_name', :dependent => :destroy
end

class TruckSchedules <ActiveRecord::Base
  belongs_to :trucks
end

class App < Sinatra::Base

  before do
    content_type :json
  end

  helpers do

    def json_pretty_print(data)
      if !data
        return status 204
      else
        JSON.pretty_generate(JSON.load(data.to_json)) + '\n'
      end
    end

  end

  get '/' do
    p 'Hello! You\'re visiting the TruckFeedServer. API documentation soon to come'
  end

  get '/truck/all?' do
    @trucks = Trucks.all
    @trucks.to_json
  end

  # /truck/schedules?truck_name=TRUCK NAME
  get '/truck/schedules' do
    @truck_schedule = TruckSchedules.where(truck_name: params[:truck_name])
    @truck_schedule.to_json
  end

  # /truck/ID
  get '/truck/:id/?' do
    @truck = Trucks.find(params[:id])
    @truck.to_json
  end

  # /truck?name=TRUCK NAME
  get '/truck' do
    @truck_name = Trucks.where(name: params[:name])
    @truck_name.to_json
  end

  get '/truck/schedules/all/?' do
    @truck_schedules = TruckSchedules.all
    @truck_schedules.to_json
  end

  #/truck/schedules
  # HOW TO POST:
  #
  # Use postman to POST to truck/schedules
  #
  # In the HEADERS: Accept: application/json
  # Content-Type: application/json
  #
  # In the BODY: Select raw and make sure the text type is JSON
  #
  # use http://www.jsonlint.com/ to verify JSON
  #
  # {"truck_id":"2","truck_name":"The Spot","month":"October", "start_date": "05/06/17", "end_date": "05/06/17" start_time":"8:00PM","end_time":"10:00PM","location":"BubbaDSM","street_address":"200 10th St","city_state":"Des Moines, IA"}

  post '/truck/schedules' do
    p 'Received json'
    data = JSON.parse(request.body.read)
    p "JSON: #{data.inspect}"

    @schedule = TruckSchedules.new(data)
    p 'Attempting to save'

    if @schedule.save
      json_pretty_print @schedule
    else
        p 'Failed to save'
    end
  end

end
