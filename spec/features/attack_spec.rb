require 'spec_helper'

RSpec.feature 'attacks player 2' do

  scenario 'it shows whose turn it is to attack' do
    sign_in_and_play
    expect(page).to have_content "Bob's Turn"
  end

  scenario 'hits on player 2 and receive confirmation' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content "You just hit Player2"
  end

  scenario 'hitpoint of player 2 has dropped by 10' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content "Player1:100hp&Player2:90hp"
  end

  scenario 'it switches turns after attack' do

  end
end
