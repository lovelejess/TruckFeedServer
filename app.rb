require 'sinatra'
require 'sinatra/activerecord'

class Trucks < ActiveRecord::Base
  has_many :truck_schedules, :class_name => 'TruckSchedule',  :foreign_key => 'truck_id', :dependent => :destroy
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

  get '/trucks/?' do
    @trucks = Trucks.all
    @trucks.to_json
  end

  get '/trucks/:id/?' do
    @truck = Trucks.find(params[:id])
    @truck.to_json
  end


  get '/trucks/schedules/:truck_id/?' do
    @truck_schedule = TruckSchedules.find(params[:truck_id])
    @truck_schedule.to_json
   end
end


