require 'spec_helper'

feature 'create a question' do
  let!(:a_question) {FactoryGirl.attributes_for :question}
    let!(:user) { FactoryGirl.create :user }
     before(:each) do
    visit root_path
    click_on "Log In"
    fill_in 'Username', :with => user.username
    fill_in 'Password', :with => user.password
    click_on "Sign In"
     end
  scenario 'create a valid question' do
    visit root_path
    click_on 'ask new question'
    within ('#new_question') do
      fill_in 'Title', with: a_question[:title]
      fill_in 'Body', with: a_question[:body]
    end
      click_on 'Create Question'
      expect(page).to have_content(a_question[:title])
  end
end
