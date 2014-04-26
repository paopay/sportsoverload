require 'spec_helper'

describe VotesController do
  context "#update" do
    let!(:vote) {FactoryGirl.create :vote }
    context "Voting on questions" do
      let!(:question) { FactoryGirl.create :question }
      it "should increase votecount of question by one when up-voting" do
        expect{
          put :update, id: vote.id, vote_type: true, voteable: { id: question.id, type: question.class }
        }.to change { vote.reload.vote_type }.to(true)
      end
      it "should increase votecount of question by one when down-voting" do
        expect{
          put :update, id: vote.id, vote_type: false, voteable: { id: question.id, type: question.class }
        }.to change { vote.reload.vote_type }.to(false)
      end
      it "should associate the vote to a voteable_id" do
        expect{
          put :update, id: vote.id, vote_type: false, voteable: { id: question.id, type: question.class }
        }.to change { vote.reload.voteable_id }.to(question.id)
      end
      it "should associate the vote to a voteable_type" do
        expect{
          put :update, id: vote.id, vote_type: false, voteable: { id: question.id, type: question.class }
        }.to change { vote.reload.voteable_type }.to(question.class.to_s)
      end
    end
  end
end

