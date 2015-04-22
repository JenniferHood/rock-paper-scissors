require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('rock_paper_scissors player 1 path', {:type => :feature}) do
  it('processes player 1 entry and adds it to player 2 input page') do
    visit('/')
    fill_in('player1', :with => 'rock')
    click_button('Choose')
    expect(page).to have_content('Player 1: rock')
  end

  it('takes player 1 and player 2 choices and returns the winner') do
    visit('/')
    fill_in('player1', :with => 'rock')
    click_button('Choose')
    #do not need to enter another "visit('/')", it will automatically go to the next page.
    fill_in('player2', :with => 'paper')
    click_button('Choose')
    expect(page).to have_content('Player 2 wins!')
  end
end
