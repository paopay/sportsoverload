class UsersController < ApplicationController
  def index
  end

  def sign_up
    @user = User.new
  end

  def create

  end
end