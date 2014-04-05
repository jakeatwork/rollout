Rollout::Application.routes.draw do
  resources :clients

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end