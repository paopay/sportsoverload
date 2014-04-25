class CommentsController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @comment = Comment.new(params[:comment])
    @comment.commentable_id = @question.id
    @comment.commentable_type = 'Question'
    @comment.user_id = session[:user_id]
    @comment.save


    render partial:'/shared/comments', locals: {comment: @comment}

  end

end