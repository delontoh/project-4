Rails.application.routes.draw do
  resources :events
  
  devise_for :users, :controllers => { registrations: 'registrations' }
  
  
  get 'users/:id', to:'users#show', as: 'profile_user'  # route to show method in Users Controller
  
  post 'events/:id', to:'events#join', as: 'join'
  post 'events/:id', to:'events#leave', as: 'leave'
  
  # devise_for :users, :path_prefix => 'd'
  # resources :users, :only =>[:show]
  
       
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
