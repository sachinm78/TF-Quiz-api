Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :questions, only: [:index, :show]
end
