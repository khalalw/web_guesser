require 'sinatra'
require 'sinatra/reloader'

def rand_number(n)
  rand(n)
end

number = rand_number(100)

get '/' do
  erb :index, locals: { number: number }
end
