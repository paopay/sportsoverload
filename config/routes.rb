SportsOverload::Application.routes.draw do

  root :to => 'questions#index'

  resources :sessions, :only => [:new, :create]
  resources :users, :only => [:show, :create, :new]
  resources :questions

end
