Rails.application.routes.draw do

  get 'users/index'
  get 'users/:id', to:'users#show', as: 'user'

  resources :events

  devise_for :users, :controllers => { registrations: 'users/registrations'}
  
  #devise_for :users, :path_prefix => 'd'
  resources :users, :only =>[:show]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
