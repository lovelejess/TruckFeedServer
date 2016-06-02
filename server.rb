require 'sinatra/base'
require 'json'

class Server < Sinatra::Base
  get '/trucks.json' do
    content_type :json
    
    {:trucks => ["Powered By Fries","Outside Scoop", "The Spot", "Ferinheit Wood Oven Pizza", "Let's Toast", "Parlo Pizza", "Karam's Grill", "Street Eats DSM"]}.to_json
  end
end
