require 'spec_helper'

feature "log out" do
  let!(:user_attr) { FactoryGirl.attributes_for :user }
  scenario "able to see log out button" do
    visit root_path
    click_on "Log In"
    fill_in 'Username', :with => user_attr[:username]
    fill_in 'Password', :with => user_attr[:password]
    click_on "Sign In"
    expect(page).to have_content("Log Out")
  end

  # scenario "able to log out" do
  #   visit root_path
  #   click_on "Log In"
  #   fill_in 'Username', :with => user_attr[:username]
  #   fill_in 'Password', :with => user_attr[:password]
  #   click_on "Sign In"
  #   click_on "Log Out"
  #   expect(page).to have_content("Logged Out!")
  # end
end