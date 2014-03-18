module RegistrationMacros
  def register_new_user
    visit root_path
    within('#main_content') {  click_link 'Register' }
    fill_in 'Username', with: 'Charlie'
    fill_in 'Email', with: 'chuck@example.com'
    fill_in 'Password', with: 'p@ssword'
    fill_in 'Password confirmation', with: 'p@ssword'
    click_button 'Register'
  end
end
