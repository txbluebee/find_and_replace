require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find_and_replace path', {:type => :feature}) do
  it('processes the user entry and returns it with new sentence') do
    visit('/')
    fill_in('words', :with => 'He loves dog so much that he doenst even eat hotdog.')
    fill_in('old-word', :with => 'dog')
    fill_in('new-word', :with => 'cat')
    click_button("Let's play")
    expect(page).to have_content('He loves cat so much that he doenst even eat hotcat.')
  end
end
