require 'spec_helper'

feature "Signup" do
  scenario "User can register" do
    visit '/'
    click_link 'Please Register'
    fill_in 'user_email', with: 'bob@bob.com'
    fill_in 'user_password', with: 'abcd1234'
    fill_in 'user_password_confirmation', with: 'abcd1234'
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end