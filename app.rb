require 'sinatra'

get "/" do
  p 'Hello, World!'
end

get '/random_cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end

get '/named_cat' do
  p params
  @name = params[:name]
  erb(:index)
end
