require 'spec_helper'

describe Question do
    context "validations" do
      it {should validate_presence_of :title}
      it {should validate_presence_of :body}
      it {should validate_presence_of :user}

    end

    context "associations" do
      it { should belong_to :user }
      it { should have_many :votes }
    end

    context "vote_count" do
      let!(:question) { FactoryGirl.create :question }
      it "should get the difference between upvotes and downvotes" do
        10.times do
          question.votes << Vote.create(
            vote_type: [true, false].sample,
            voteable_id: question.id,
            voteable_type: question.class.to_s
            )
        end
        expect(question.vote_count).to be < 10
      end
    end
end