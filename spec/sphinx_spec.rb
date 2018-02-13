require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the riddle of the sphinx', {:type => :feature}) do
  it('processes the user answer and returns whether the answer to the riddle is correct or not') do
    visit('/')
    fill_in('riddle1', :with => 'a bed')
    click_button('submit')
    expect(page).to have_content("oh happy days")
  end
end
