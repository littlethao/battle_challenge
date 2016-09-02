require 'spec_helper'

feature 'shows hitpoints of players' do
  scenario 'display hitpoints of players' do
    sign_in_and_play
    expect(page).to have_content "Thao: 100"
  end

  feature 'Losing the game' do
    scenario 'shows when player 2 has lot the game ' do
      sign_in_and_play
      20.times {click_button 'Attack'}
      expect(page). to have_content "Thao has lost the game"
    end
  end
end
