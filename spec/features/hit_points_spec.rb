require 'spec_helper'

RSpec.feature 'view hitpoints' do

  scenario 'current hitpoint status' do
    sign_in_and_play
    expect(page).to have_content "Player1:100hp&Player2:100hp"
  end
end
