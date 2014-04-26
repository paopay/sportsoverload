require 'spec_helper'

feature "Voting on question" do
  let!(:question) { FactoryGirl.create :question }
  let!(:user) { FactoryGirl.create :user}
  before :each do
    page.set_rack_session(:user_id => user.id)
    visit root_path
    click_on question.title
  end

  scenario "a user can vote on questions" do
    expect(page).to have_content('Boss')
    expect(page).to have_content('Not Boss')
  end

  scenario "a user can vote a question up", js: true do
    click_button "Boss"
    expect(page).to have_content(question.vote_count)
  end
end