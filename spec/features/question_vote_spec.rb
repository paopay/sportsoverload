require 'spec_helper'

feature "Voting on question" do
  let!(:question) { FactoryGirl.create :question }
  before :each do
    visit root_path
    click_on question.title
  end
  # scenario "a user can see the score" do
  #   expect(page).to have_css('.score')
  # end
  scenario "a user can vote on questions" do
    expect(page).to have_content('Boss')
    expect(page).to have_content('Not-Boss')
  end

  scenario "a user can vote a question up" do
    click_on "Boss"
    expect(page).to have_content(question.vote_count)
  end
end