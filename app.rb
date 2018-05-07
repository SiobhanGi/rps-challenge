require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :name_form
  end

  post '/name' do
    $player = Player.new(params[:name])
    p $player
    redirect :play
  end

  get '/play' do
    erb :play
  end

end
