require_relative 'config/environment'

class App < Sinatra::Base

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    #write your code here
     @friends = ["Charlie Chaplin", "Frank Sinatra", "Jane Eyre", "Maya Angelou", "Shakespeare"]
     erb :friends
  end

end