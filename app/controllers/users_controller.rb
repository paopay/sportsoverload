class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save!
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render new_user_path
    end
  end

end