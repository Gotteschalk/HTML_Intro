require 'sinatra'

get "/" do
  p 'Hello, World!'
end

get '/cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb(:index)
end
