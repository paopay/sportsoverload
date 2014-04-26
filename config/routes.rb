SportsOverload::Application.routes.draw do

  root :to => 'questions#index'

  resources :sessions, :only => [:new, :create, :destroy]
  resources :users, :only => [:show, :create, :new]

  resources :votes, :only => [:update]

  resources :questions, only: [:index, :show, :create, :new] do
    resources :answers, only: [:create, :new]

  end

  # resources :comments

    resources :questions do
      resources :comments, only: [:create, :new]
    end

    resources :answers do
      resources :comments, only: [:create, :new]
    end

end

