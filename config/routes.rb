Rollout::Application.routes.draw do
  resources :divisions

  resources :changes

  resources :launches

  resources :prices

  resources :clients

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end