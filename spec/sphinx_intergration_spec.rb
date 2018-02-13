require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('#reveal', {:type => :feature}) do
  it('processes the user answer and returns whether the answer to the riddle is correct or not') do
    visit('/result')
    fill_in('riddle1', :with => 'a bed')
    click_button('submit')
    expect(page).to have_content("oh happy days")
  end
end
