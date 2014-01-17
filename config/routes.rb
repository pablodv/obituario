Obituario::Application.routes.draw do
  devise_for :users

  namespace :dashboard do
    root 'dashboard#index'

    resources :users, only: [] do
      resources :obituaries
    end
  end


  root 'home#index'

end
