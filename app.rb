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
  player1 = params.fetch('player1')
  player2 = params.fetch('player2')
  if player1.beats?(player2)
    @results = 'Player 1 wins!'
  else
    @results = 'Player 2 wins!'
  end
  erb(:result)
end
