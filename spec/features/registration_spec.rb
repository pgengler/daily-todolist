require 'spec_helper'

feature "User registration" do
  scenario "happy path" do
    visit new_user_path
    fill_in 'Email', with: 'katie@example.org'
    fill_in 'Password', with: 'bleh'
    click_button 'Create User'
    expect(page).to have_content "Welcome"
  end
end
