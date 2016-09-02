require 'spec_helper'

feature 'Attacking' do

  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Matt attacked Thao"
  end

  scenario 'reduce hitpoint by 10 of player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content "Thao: 100"
    expect(page).to have_content "Thao: 90"
  end

  feature 'shows current player' do
    scenario 'initial player = Player 1' do
      sign_in_and_play
      expect(page).to have_content "Current player is: Matt"
    end

    scenario 'switches current player to player 2' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).to have_content "Current player is: Thao"
    end
  end
end
