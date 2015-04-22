require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')

get('/') do
  erb(:index)
end

get('/player2') do
  @player1 = params.fetch('player1')
  erb(:player2)
end

get('/results') do

  erb(:result)
end
