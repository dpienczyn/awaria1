Rails.application.routes.draw do
  get 'static_pages/instalacja'

  devise_for :admins
  get 'static_pages/paneladmina'

  get 'static_pages/home'

  get 'static_pages/statystyki'
  get 'static_pages/showzgloszenies'
  get 'users/show'

  resources :zgloszenie_aktywnoscs
  resources :zgloszenies
  resources :pracowniks
  resources :stanowiskos
  resources :dzials
  resources :klients
  resources :users, only: [:index]
  devise_for :users, :controllers => { registrations: 'registrations' }

  scope "admin" do
    resources :users do
      member do
        delete 'destroy'
        post 'grantadmin'
        post 'pracownik'
      end
    end
  end


  # match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  # match 'users/:id' => 'users#dodajpracownik', :via => :post, :as => :pracownik_dodaj_pracownik_user
  # match 'users/:id' => 'users#grantadmin', :via => :post, :as => :admin_grant_admin_user
  # match 'users/:id' => 'users#pracownik', :via => :post, :as => :pracownik_user
  # match 'users/:id' => 'users#denyadmin', :via => :post, :as => :admin_deny_admin_user
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
