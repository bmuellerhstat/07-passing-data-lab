require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string=params["string"]
    @reversed_string=params =original_string.reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
    @friends=["Charlie Chaplin", "Richard Pryor"]
    erb :friends
  end

end