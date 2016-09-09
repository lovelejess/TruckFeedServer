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


end
