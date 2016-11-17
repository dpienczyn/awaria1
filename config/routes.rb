Rails.application.routes.draw do
  get 'static_pages/instalacja'

  devise_for :admins
  get 'static_pages/paneladmina'

  get 'static_pages/home'

  resources :zgloszenie_aktywnoscs
  resources :zgloszenies
  resources :pracowniks
  resources :stanowiskos
  resources :dzials
  resources :klients
  resources :users, only: [:index]
  devise_for :users

  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
