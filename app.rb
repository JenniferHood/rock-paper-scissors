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
  if player1.beats?(player2).eql?(true)
    @results = 'Player 1 wins!'
  elsif player2.beats?(player1).eql?(true)
    @results = 'Player 2 wins!'
  elsif player2.beats?(player1).eql?('tie')
    @results = "It's a tie!"
  else
    @results = "Those weren't options!"
  end
  erb(:result)
end
