require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :index
    end

    post '/team' do
        @team = params[:team]
        @members = params[:team][:members]
        erb :team
    end

end
