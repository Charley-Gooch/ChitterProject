require 'sinatra/base'
require 'shotgun'
require './app/details'

class Chitter < Sinatra::Base
  enable :method_override
  set :method_override, true

  get '/' do
    erb :_index
  end

  #get '/index' do
  #  erb :index
  #end

  get '/login' do
    erb :_login
  end

  get '/signup' do
    erb :_signup
  end

  post '/signup' do
    Details.create(name: params[:name], password: params[:password], email: params[:email])
    redirect '/'
  end

  run if app_file == $0
end
