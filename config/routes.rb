Rails.application.routes.draw do

  namespace :backoffice do
    resources :categories, except: [:destroy, :show]
    resources :admins, except: [:destroy, :show]
    get 'dashboard', to: 'dashboard#index'
  end

  namespace :site do
    get 'home', to: 'home#index'
  end

  get 'backoffice', to: 'backoffice/dashboard#index'

  devise_for :admins, :skip => [:registration]
  devise_for :members 
  get 'home/index'
  root 'site/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
