require 'spec_helper'

describe UsersController do
  let!(:user) { FactoryGirl.create :user }
  let!(:user_attr) { FactoryGirl.attributes_for :user }
  context "#new" do
    it "should return the sign up page" do
      get :new
      expect(response).to be_success
    end

    it "should assign user variable to User.new" do
      get :new
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  context "#create" do
    it "should create a new user" do
      expect {
        post :create, :user => user_attr
      }.to change { User.count }.by(1)
    end

    it "should start a user session" do
      post :create, :user => user_attr
      expect(session[:user_id]). to eq(User.last.id)
    end
  end
end