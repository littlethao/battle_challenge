require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @player1hp = 100
    @player2hp = 100
    @attack = session[:attack]
    erb(:play)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect to('/play')
  end

  post '/attack' do
    session[:attack] = true
    redirect to('play')
  end

  run! if app_file == $0
end
