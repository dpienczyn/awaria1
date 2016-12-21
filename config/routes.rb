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
  resources :stanowiskos
  resources :dzials
  devise_for :users, controllers: { registrations: 'registrations' }, :path_prefix => 'my'
  resources :users

  scope "admin" do
    resources :users do
      member do
        delete 'destroy'
        post 'grantadmin'
        post 'pracownik'
      end
    end
  end

  scope "zgloszenie" do
    resources :zgloszenies do
      member do
        get 'print'
      end
    end
  end

  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
