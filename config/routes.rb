Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # devise_for :users
  # resources :sessions, only: [:create, :destroy]
  resources :courses, only: [:create]
  resources :students, only: [:create, :update]
  resources :teachers, only: [:create, :update]
  get '/users/csv', to: 'users#csv'
  post '/students/enrol', to: 'students#enrol'
  post '/teachers/teaches', to: 'teachers#teaches'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
