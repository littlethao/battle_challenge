require 'spec_helper'

RSpec.feature 'get user name' do

  scenario 'with valid credentials' do
    visit '/'
    fill_in 'Player1', with: "Bob"
    fill_in 'Player2', with: "John"
    click_button 'Submit'
    expect(page).to have_content "Hello Bob & John"
  end
end
