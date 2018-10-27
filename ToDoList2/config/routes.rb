Rails.application.routes.draw do
  get 'readies/create'
  resources :tasks, only: [:index, :show] do
    resources :readies, only: :create
  end
  root to: 'tasks#index'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
