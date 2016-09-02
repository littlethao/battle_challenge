require 'spec_helper'

  feature 'shows hitpoints of players' do
    scenario 'display hitpoints of players' do
      sign_in_and_play
      expect(page).to have_content "Thao: 100"
    end

  feature 'shows current player' do
    scenario 'initial player = Player 1' do
      sign_in_and_play
      expect(page).to have_content "Current player is: Matt"
    end
    # scenario 'initial player = Player 1' do
    #   sign_in_and_play
    #   click_button 'Attack'
    #   expect(page).to have_content "Current player is: Thao"
    # end
  end
end
