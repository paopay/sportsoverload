class VotesController < ApplicationController

  def update
    vote = Vote.create
    if vote && params[:vote_type] == true
      Vote.assign_vote_attributes(vote, params)
      redirect_to question_path(params[:voteable]["id"])
    else
      Vote.assign_vote_attributes(vote, params)
      redirect_to question_path(params[:voteable]["id"])
    end
  end
end