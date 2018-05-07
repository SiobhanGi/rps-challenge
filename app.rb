require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :name_form
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect :play
  end

  get '/play' do
    erb :play
  end

  post '/choices' do
    $game = Game.new($player, params[:user_choice])
    redirect :results
  end

  get '/results' do
    erb :results
  end

end
