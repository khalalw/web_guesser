require 'sinatra'
require 'sinatra/reloader'

def random_num
  rand(101)
end

get '/' do
  'THE SECRET NUMBER IS ' + random_num.to_s
end
