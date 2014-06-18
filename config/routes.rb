Obituario::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)

  namespace :dashboard do
    root 'dashboard#index'

    resources :users, only: [] do
      resources :obituaries do
        member do
          get 'message' => 'messages#new', as: :message
          post 'message' => 'messages#create'
        end
      end
    end
  end

  resources :obituaries, only: [:index, :show] do
    resources :condolences, only: [:new, :create, :show]

    member do
      get 'message' => 'messages#new', as: :message
      post 'message' => 'messages#create'
    end
  end

  resources :products, only: [:index] do
    resources :services, only: [:new, :create]
  end

  get 'prices' => 'home#prices'
  root 'home#index'

end
