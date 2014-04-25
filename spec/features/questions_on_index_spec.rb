require 'spec_helper'

feature 'view questions on index' do
  let!(:question) { FactoryGirl.create :question }
  let!(:another) { FactoryGirl.create :question }
  scenario 'assigns questions to question.all' do
    visit questions_path
    expect(page).to have_content(question.title)
    expect(page).to have_content(another.title)
  end
end