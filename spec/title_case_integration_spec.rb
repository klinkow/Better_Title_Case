require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the title case path', {:type => :feature}) do
  it('process the user entry and returns it in title cased') do
    visit('/')
    fill_in('title', :with => 'geen begs and slam')
    click_button('Send')
    expect(page).to have_content('Geen Begs and Slam')
  end
end
