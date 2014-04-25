require 'spec_helper'

describe SessionsController do
  let!(:user) { FactoryGirl.create :user }
  context "#create" do
    it "should find correct user" do
      expect {
        post :create, :session => { username: user.username, password: user.password }
      }.to change { session[:user_id] }
    end
  end
end