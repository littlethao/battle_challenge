require 'spec_helper'

RSpec.feature 'attacks player 2' do

  scenario 'hits on player 2 and receive confirmation' do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content "You just hit Player2"
  end
end
