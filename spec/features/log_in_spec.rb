require 'spec_helper'

feature "log in" do
  let!(:user_attr) { FactoryGirl.attributes_for :user }
  scenario "able to go to log in page" do
    visit root_path
    click_on "Log In"
    expect(page).to have_content("Username")
  end
end