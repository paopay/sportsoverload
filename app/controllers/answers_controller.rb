class AnswersController < ApplicationController

  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find params[:question_id]
    @answer = @question.answers.new params[:answer]
    @answer.user_id = session[:user_id]
    if @answer.save
      p '$' * 50
      p @answer
        render partial:'/shared/answers', locals: {answer: @answer}
    else
      p @answer
      p '#' * 50
      @errors = 'Answer cannot be blank'
      render partial: '/shared/errors', locals: {errors: @errors}, :status => :unprocessable_entity
    end
  end

end