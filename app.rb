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

    # [{"truck":{"description_type":"Fresh, made-to-owner sandwiches","id":1,"image_url":"the_spot.png","name":"The Spot"}},{"truck":{"description_type":"Ice Cream","id":2,"image_url":"outside_scoop.png","name":"The Outside Scoop"}}]

    # {"trucks":[{"truck":{"name":"Powered By Fries","type":"Belgian fries","image":"powered_by_fries.png","price":"$"}},{"truck":{"name":"Outside Scoop","type":"Ice Cream","image":"the_outside_scoop.jpg","price":"$"}},{"truck":{"name":"The Spot","type":"Fresh, made-to-order sandwiches","image":"the_spot.jpg","price":"$"}},{"truck":{"name":"Ferinheit Wood Oven Pizza","type":"Wood Oven Pizza","image":"ferinheit_pizza.jpg","price":"$"}}]}
  end

  get '/trucks/:id/?' do
    @truck = Truck.find_by_id(params[:id])
    @truck.to_json
  end
end

