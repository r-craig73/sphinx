require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the riddle of the sphinx', {:type => :feature}) do
  it('processes the user answer and returns whether the riddle is correct or not') do
    visit('/')
    fill_in('riddle', :with => 'A bed')
    click_button('Submit!')
    expect(page).to have_content('You are correct, enter the city')
  end
end
