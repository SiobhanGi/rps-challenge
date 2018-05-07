require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'
require './lib/choices.rb'

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
    $choice = Choices.new(params[:user_choice])
    p params
    erb :play
  end

end
