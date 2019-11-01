require 'sinatra/base'

class Login < Sinatra::Base
    
    enable :sessions

    get '/' do
        erb(:home)
    end

    post '/enter-name' do
        session[:name] = params[:name]
        redirect('/play')
    end

    get '/play' do 
        @name = session[:name]
        erb(:game)
    end
end