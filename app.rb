require 'sinatra'
require 'sinatra/activerecord'

class Truck < ActiveRecord::Base
end

class App < Sinatra::Base
  before do
    content_type :json
  end

  get '/' do
    p 'Hello!'
  end

  get '/trucks/?' do
    @trucks = Truck.all
    @trucks.to_json
  end

  get '/trucks/:id/?' do
    @truck = Truck.find_by_id(params[:id])
    @truck.to_json
  end
end

