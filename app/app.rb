require 'sinatra/base'
require 'shotgun'

class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/login' do
    erb :login
  end

run if app_file == $0
end
