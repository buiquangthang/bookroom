Rails.application.routes.draw do
  resources :clas
  resources :schedules
  resources :rooms
  devise_for :users
  root 'schedules#index'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
