require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/sphinx')

get('/') do
  # "This application takes input from the user and tests it against predefined riddles"
  erb(:input)
end

get('/result') do
  # @length = params.fetch("length").to_i
  # @width = params.fetch("width").to_i
  # @height = params.fetch("height").to_i
  # output = Parcel.new(@length, @width, @height)
  @result = param.fetch("riddle1")
  # @result2 = output.cost_to_ship
  erb(:output)
end
