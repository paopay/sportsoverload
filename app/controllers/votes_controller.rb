class VotesController < ApplicationController
  def update
    vote = Vote.find_or_create_by_id(params[:id])
    p params
    if vote && params[:vote_type] == true
      vote.update_attributes(
        vote_type: params[:vote_type],
        voteable_id: params[:voteable]["id"],
        voteable_type: params[:voteable]["type"]
        )
      redirect_to question_path(params[:voteable]["id"])
    else
      vote.update_attributes(
        vote_type: params[:vote_type],
        voteable_id: params[:voteable]["id"],
        voteable_type: params[:voteable]["type"]
        )
      redirect_to question_path(params[:voteable]["id"])
    end
  end
end