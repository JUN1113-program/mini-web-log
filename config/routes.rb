Rails.application.routes.draw do
  devise_for :users
  root "weblogs#index"
  resources :weblogs
  resources :users, only: [:show]
end
