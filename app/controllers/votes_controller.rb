class VotesController < ApplicationController
  def update
    vote = Vote.find_or_create_by_id(params[:id])
    if vote && params[:vote_type] == true
      vote.update_attributes(
        vote_type: params[:vote_type],
        voteable_id: params[:question]["id"],
        voteable_type: params[:question]["type"]
        )
      redirect_to question_path(params[:question])
    else
      vote.update_attributes(
        vote_type: params[:vote_type],
        voteable_id: params[:question]["id"],
        voteable_type: params[:question]["type"]
        )
      redirect_to question_path(params[:question])
    end
  end
end