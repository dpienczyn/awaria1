Rails.application.routes.draw do
  mount_roboto
  get 'static_pages/instalacja'

  devise_for :admins
  get 'static_pages/paneladmina'

  get 'static_pages/home'

  get 'static_pages/statystyki'
  get 'static_pages/showzgloszenies'
  get 'static_pages/realizacja'
  get 'static_pages/zgloszeniazrealizowane'
  get 'users/show'

  post 'zgloszenies/realizacja'
  
  resources :zgloszenie_aktywnoscs
  resources :zgloszenies
  resources :stanowiskos
  resources :dzials
  devise_for :users, controllers: { registrations: 'registrations' }, :path_prefix => 'my'
  resources :users

  # scope "zgloszenia" do
  #   resources :zgloszenies do
  #     member do
  #       post 'realizacja'
  #     end
  #   end
  # end

  scope "admin" do
    resources :users do
      member do
        delete 'destroy'
        get 'grantadmin'
        get 'pracownik'
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

  devise_scope :user do
    authenticated :user do
      root 'zgloszenies#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # root 'static_pages#home'
  # root 'devise/sessions'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
