Rails.application.routes.draw do
  resources :tasks, only: :index
  root to: 'tasks#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
