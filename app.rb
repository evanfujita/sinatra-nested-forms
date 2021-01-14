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
      
      @name = pirate["name"]
      @weight = pirate["weight"]
      @height = pirate["height"]
      @pirate = Pirate.new(@name, @weight, @height)
     
      @ship1_name = pirate[ships][][name]
      @ship1_type = pirate[ships][][type]
      @ship1_booty = pirate[ships][][booty]
      @ship2_name = pirate[ships][][name]
      @ship2_type = pirate[ships][][type]
      @ship2_booty = pirate[ships][][booty]
      @ship1 = Ship.new(@ship1_name, @ship1_type, @ship1_booty)
      @ship2 = Ship.new(@ship2_name, @ship2_type, @ship2_booty)
      
      @ships = Ship.all
      
      erb :'pirates/show'
    end

  end
end
