Rails.application.routes.draw do
  devise_for :users
  root to: "subjects#index"
  resources :subjects
  resources :my_problems do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
