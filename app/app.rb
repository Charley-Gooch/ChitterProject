require 'sinatra/base'
require 'shotgun'

class Chitter < Sinatra::Base

  get '/' do
    'Chitter'
  end
  
run if app_file == $0
end
