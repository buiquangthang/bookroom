Rails.application.routes.draw do
  resources :courses
  resources :schedules
  resources :rooms
  devise_for :users
  root 'schedules#index'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  match "/indexteacher/:id" =>"users#indexteacher", :as => :teacher, via: :get
  match "/indexuser/:id" =>"users#indexuser", :as => :student, via: :get

end
