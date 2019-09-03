require 'sinatra'

set :session_secret, 'super secret'

get "/" do
  p 'Hello, World!'
end

get '/random_cat' do
  if params[:name] == nil
    @name = %w(Amigo Oscar Viking).sample
  elsif params[:name] == ""
    @name = "Put a fucking name in, mother fucker!"
  else @name = params[:name]
  end
  erb(:index)
end

get '/named_cat' do
  p params
  @name = params[:name]
  erb :index
end

post '/named_cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end

get '/secret-page' do
  p 'This is a secreeeeeeeet page'
end
