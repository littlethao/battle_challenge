require 'spec_helper'

feature 'shows hitpoints of players' do
  scenario 'display hitpoints of players' do
    sign_in_and_play
    expect(page).to have_content "Thao: 100"
  end
end
