Rails.application.routes.draw do
  get 'sessions/new'
  root 	"users#new"
  get 	'/signup', 	to: 'users#new'
  post 	'/signup', 	to: 'users#create'
  get 	'/show',		to: 'users#show'

  resources :users, only: [:show,:create,:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
