Rails.application.routes.draw do
  devise_for :users
  root "weblog#index"
  resources :weblog
end
