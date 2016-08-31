require 'spec_helper'

RSpec.feature 'get user name' do

  scenario 'with valid credentials' do
    sign_in_and_play
    expect(page).to have_content "Hello Bob & John"
  end
end
