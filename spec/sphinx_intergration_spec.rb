require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Riddle of the Sphinx', {:type => :feature}) do
  it('processes the user entry and returns whether it is a square or not') do
    visit('/')
    fill_in('riddle1', :with => 'a bed')
    click_button('submit')
    expect(page).to have_content('oh happy days')
  end
end
