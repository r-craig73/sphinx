require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Riddle of the Sphinx', {:type => :feature}) do
  it('processes the user entry and returns whether it is a square or not') do
    visit('/')
    fill_in('riddle1', :with => 'a bed')
    fill_in('riddle2', :with => 'the letter v')
    fill_in('riddle3', :with => 'hawaii')
    click_button('submit')
    expect(page).to have_content('oh happy days')
  end
end
