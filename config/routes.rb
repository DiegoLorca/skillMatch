Rails.application.routes.draw do
  resources :skills
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  get 'pages/index'

  root 'pages#index'

  get 'users/search'
  get 'users/dashboard'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
