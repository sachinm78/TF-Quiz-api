Rails.application.routes.draw do
  resources :categories, only: [:index, :show, :create]
  resources :questions, only: [:index, :show, :create]
end
