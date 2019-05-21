Rails.application.routes.draw do
  root 	"sessions#new"
  
  get 		'/new_event', 	to: 'events#new'
  post 		'/new_event', 	to: 'events#create'
  get 		'/all_events', 	to: 'events#index'

  get 		'/login', 			to: 'sessions#new'
  post 		'/login',				to: 'sessions#create'
  delete 	'/signout', 		to: 'sessions#destroy'
  get 		'/signup', 			to: 'users#new'
  post 		'/signup', 			to: 'users#create'

  resources :users, 	only: [:show,:create,:new]
  resources :events, 	only: [:show,:create,:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
