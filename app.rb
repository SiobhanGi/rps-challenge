require 'sinatra/base'
class RPS < Sinatra::Base

  get '/' do
    'Hello world'
  end

  get '/name_form' do
    erb :name_form  
  end

end
