Rails.application.routes.draw do
  root 	"sessions#new"
  get 		'/login', 	to: 'sessions#new'
  post 		'/login',		to: 'sessions#create'
  delete 	'/signout', to: 'sessions#destroy'
  get 		'/signup', 	to: 'users#new'
  post 		'/signup', 	to: 'users#create'
  get 		'/show',		to: 'users#show'

  resources :users, only: [:show,:create,:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
