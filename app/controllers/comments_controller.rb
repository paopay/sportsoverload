class CommentsController < ApplicationController

  def create

    if params[:answer_id] == nil
      @question = Question.find(params[:question_id])
      create_comment_for('Question')
      @comment.commentable_id = @question.id
      render_comment_or_error
    else
      @answer = Answer.find(params[:answer_id])
      create_comment_for('Answer')
      @comment.commentable_id = @answer.id
      render_comment_or_error
    end
  end

  private

  def create_comment_for(type)
    @comment = Comment.new(params[:comment])
    @comment.commentable_type = type
    @comment.user_id = session[:user_id]
  end

  def render_comment_or_error
    if @comment.save
      render partial:'/shared/comments', locals: {comment: @comment}
    else
      @errors = 'Comment cannot be blank'
      render partial: '/shared/errors', locals: {errors: @errors}, :status => :unprocessable_entity
    end
  end

end