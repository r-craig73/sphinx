require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Riddle of the Sphinx', {:type => :feature}) do
  it('processes the user entry and returns correct answers') do
    visit('/')
    fill_in('riddle1', :with => 'a bed')
    fill_in('riddle2', :with => 'the letter v')
    fill_in('riddle3', :with => 'hawaii')
    click_button('submit')
    expect(page).to have_content('oh happy days')
  end
  it('processes the user entry and returns correct anwers, regardless of capitalization') do
    visit('/')
    fill_in('riddle1', :with => 'A bed')
    fill_in('riddle2', :with => 'THE letter V')
    fill_in('riddle3', :with => 'HAWaii')
    click_button('submit')
    expect(page).to have_content('oh happy days')
  end
end
