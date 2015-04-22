require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')

get('/') do
  erb(:index)
end

get('/results') do
  choices = ['rock', 'paper', 'scissors']
  @player = params.fetch('player')
  @computer = choices.sample()
  if @player.beats?(@computer).eql?(true)
    @results_message = "Player wins!"
  elsif @computer.beats?(@player).eql?(true)
    @results_message = "Computer wins!"
  elsif @player.beats?(@computer).eql?("tie")
    @results_message = "It's a tie!"
  else
    @results_message = "That's not an acceptable choice"
  end
  erb(:result)
end
