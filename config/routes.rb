Obituario::Application.routes.draw do
  devise_for :users

  namespace :users do
    root 'dashboard#index'
  end

  root 'home#index'

end
