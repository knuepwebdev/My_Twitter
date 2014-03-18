require 'spec_helper'

feature 'Log in as a user' do
  scenario 'with an email adress' do
    user = create(:user)
    log_in(user)
    expect(page).to have_content 'Logged in'
  end
end
