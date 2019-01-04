require 'sinatra'
require 'sinatra/reloader'

def rand_number(n)
  rand(n)
end

def check_guess(guess, num)
  'Too high' if guess.to_i > num
end

number = rand_number(100)

get '/' do
  guess = params['guess']
  message = check_guess(guess)
  erb :index, locals: { number: number }
end
