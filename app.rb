require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/play' do
    @attack = session[:attack]
    erb(:play)
  end

  post '/names' do
    player1 = Player.new(params[:Player1])
    player2 = Player.new(params[:Player2])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  post '/attack' do
    session[:attack] = true
    $game.attack
    $game.over?
    redirect to('play')
  end

  run! if app_file == $0
end
