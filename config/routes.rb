Rails.application.routes.draw do
  root "weblog#index"
  resources :weblog
end
