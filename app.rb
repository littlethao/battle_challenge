require 'sinatra/base'

class Battle < Sinatra::Base
  set :sessions, true
  set :foo, 'bar'

  get '/' do
    erb(:index)
  end

  post '/names' do
      @player1 = params[:Player1]
      @player2 = params[:Player2]
      erb(:names)
  end

  run! if app_file == $0
end
