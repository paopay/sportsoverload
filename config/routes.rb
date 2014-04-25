SportsOverload::Application.routes.draw do

  root :to => 'questions#index'
  match "sign_up" => "users#sign_up", :as => "sign_up"
  resources :users, :only =>[:create]
  resources :questions

end
