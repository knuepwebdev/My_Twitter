require 'spec_helper'

feature 'User management' do
  scenario 'adds a new user' do
    expect{
      register_new_user
    }.to change(User, :count).by(1)
  end

  scenario 'logs in newly registered user' do
    register_new_user
    expect(page).to have_content 'Logged in'
  end
end
