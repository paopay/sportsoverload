require 'spec_helper'

feature 'create a question', :js => true do
  let!(:a_question) {FactoryGirl.attributes_for :question}
  scenario 'create a valid question' do
    visit questions_path
    click_on 'ask new question'
    within ('#new_question') do
      fill_in 'Title', with: a_question[:title]
      fill_in 'Body', with: a_question[:body]
    end
      click_on 'Create Question'
      expect(page).to have_content(a_question[:title])
  end
end


# Est provident fugit maxime suscipit sint impedit mollitia.