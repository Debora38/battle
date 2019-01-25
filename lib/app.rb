require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base

  enable :sessions

  set :session_secret, "secret"

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = Player.new(params[:player1])
    session[:player2] = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end

  post "/attack" do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player1.attack(@player2)
    erb(:attack)
    redirect '/play'
  end


end
