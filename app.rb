require 'sinatra/base'

class Battle < Sinatra::Base
  set :sessions, true
  set :foo, 'bar'

  get '/' do
    'Hello world!'
  end
  
  run! if app_file == $0
end
