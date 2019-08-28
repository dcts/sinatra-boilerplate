require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry-byebug'

# load models
require_relative 'models/user'

# routes
get '/' do
  erb :home
end

get '/users' do
  @users = User.all
  erb :users
end

get '/users/:id' do
  id = params['id'].to_i
  @user = User.find(id)
  if @user.nil?
    erb :invalid
  else
    erb :user
  end
end
