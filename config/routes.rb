Rails.application.routes.draw do
  devise_for :users
  root "weblogs#index"
  resources :weblogs do
    resources :comments, only: [:create]
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show]
  resources :admins, only:[:index,:destroy]
end
