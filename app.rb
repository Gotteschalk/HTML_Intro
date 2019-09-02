require 'sinatra'

get "/" do
  p 'Hello, World!'
end

get '/cat' do
  erb(:index)
end
