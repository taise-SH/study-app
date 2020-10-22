Rails.application.routes.draw do
  devise_for :users
  root to: "subjects#index"
  resources :subjects
  resources :my_problems
  resources :users, only: :show
end
