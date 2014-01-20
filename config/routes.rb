Obituario::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  namespace :dashboard do
    root 'dashboard#index'

    resources :users, only: [] do
      resources :obituaries
    end
  end


  root 'home#index'

end
