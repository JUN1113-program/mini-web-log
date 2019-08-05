Rails.application.routes.draw do
  devise_for :users
  root "weblogs#index"
  resources :weblogs do
    resources :comments, only: [:create,:delete]
  end
  resources :users, only: [:show]
end
