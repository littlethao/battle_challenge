require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    if @game.game_over?
      redirect '/game-over'
    else
      @game.attack
      erb :attack
    end
  end

  get '/game-over' do
    @game = $game
    erb :game_over
  end

  run! if app_file == $0
end
