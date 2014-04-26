class CommentsController < ApplicationController

  def create

    if params[:answer_id] == nil
      @question = Question.find(params[:question_id])
      @comment = Comment.new(params[:comment])
      @comment.commentable_id = @question.id
      @comment.commentable_type = 'Question'
      @comment.user_id = session[:user_id]
      @comment.save
      render partial:'/shared/comments', locals: {comment: @comment}
    else
      @answer = Answer.find(params[:answer_id])
      @comment = Comment.new(params[:comment])
      @comment.commentable_id = @answer.id
      @comment.commentable_type = 'Answer'
      @comment.user_id = session[:user_id]
      @comment.save
      render partial:'/shared/comments', locals: {comment: @comment}
    end
  end

end