require 'spec_helper'

feature "log in" do
  let!(:user_attr) { FactoryGirl.attributes_for :user }
  scenario "able to go to log in page" do
    visit root_path
    click_on "Log In"
    expect(page).to have_content("Username")
  end

  scenario "able to log in with valid params" do
    visit root_path
    click_on "Log In"
    fill_in 'Username', :with => user_attr[:username]
    fill_in 'Password', :with => user_attr[:password]
    click_on "Sign In"
    expect(page).to have_content("Log Out")
  end
end