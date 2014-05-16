require 'spec_helper'

feature "Signup" do
  before do
    visit '/'
    click_link 'Sign up'
    fill_in 'user_email', with: 'bob@bob.com'
    fill_in 'user_password', with: 'abcd1234'
    fill_in 'user_password_confirmation', with: 'abcd1234'
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'

  end
  scenario "User can register, sign out and sign in" do
    click_link 'Sign out'
    expect(page).to have_content 'Signed out successfully.'
    click_link 'Sign in'
    fill_in 'user_email', with: 'bob@bob.com'
    fill_in 'user_password', with: 'abcd1234'
    click_button 'Sign in'
    expect(page).to have_content 'Signed in successfully.'
  end

  scenario "signed in user sees email address in nav bar" do
    expect(page).to have_content "bob@bob.com"
  end
end
