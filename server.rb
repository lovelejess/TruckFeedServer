require 'sinatra/base'
require 'json'

class Server < Sinatra::Base
  get '/trucks.json' do
    content_type :json

    # store contents in db
    # retrieve contents in db
    # send as json object

    {:trucks =>
         [  {:truck => {:name => "Powered By Fries", :type => "Belgian fries", :image => "powered_by_fries.png", :price => "$"}},
            {:truck => {:name => "Outside Scoop", :type => "Ice Cream", :image => "the_outside_scoop.jpg", :price => "$"}},
            {:truck => {:name => "The Spot", :type => "Fresh, made-to-order sandwiches", :image => "the_spot.jpg", :price => "$" }},
            {:truck => {:name => "Ferinheit Wood Oven Pizza", :type => "Wood Oven Pizza", :image => "ferinheit_pizza.jpg", :price => "$"}},
         ]
    }.to_json

  end
end
