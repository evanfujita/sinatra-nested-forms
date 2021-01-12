require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do

      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      
      @name = params["pirate"]["name"]
      @weight = params["pirate"]["weight"]
      @height = params["pirate"]["height"]
      @pirate = Pirate.new(@name, @weight, @height)
      binding.pry
      @ship1_name = params["pirate"]["ship_name_1"]
      @ship1_type = params["pirate"]["ships"]["0"]["type"]
      @ship1_booty = params["pirate"]["ships"]["0"]["booty"]
      @ship2_name = params["pirate"]["ships"]["1"]["name"]
      @ship2_type = params["pirate"]["ships"]["1"]["type"]
      @ship2_booty = params["pirate"]["ships"]["1"]["booty"]
      @ship1 = Ship.new(@ship1_name, @ship1_type, @ship1_booty)
      @ship2 = Ship.new(@ship2_name, @ship2_type, @ship2_booty)
      
      @pirate.ship1 = ship1
      @pirate.ship2 = ship2
      
      erb :'pirates/show'
    end

  end
end
