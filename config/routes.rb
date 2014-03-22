Obituario::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

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

  resources :obituaries, only: [:show]
  resources :services, only: [:index]

  namespace :services do
    resources :crowns, only: [:new, :create]
    resources :bouquets, only: [:new, :create]
    resources :packets, only: [:new, :create]
  end

  get 'prices' => 'home#prices'
  root 'home#index'

end
