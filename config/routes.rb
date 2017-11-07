Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  namespace :backoffice do
    resources :categories, except: [:destroy, :show]
    resources :admins, except: [:show]
    resources :diagrams, only: [:index]
    get 'dashboard', to: 'dashboard#index'
    resources :send_mail, only: [:edit, :create]
  end

  namespace :site do
    get 'home', to: 'home#index'
    get 'search', to: 'search#ads'

    namespace :profile do
      resources :deashboard, only: [:index]
      resources :ads, only: [:index, :edit, :update, :new, :create]
      resources :my_data, only: [:edit, :update]
    end

    resources :ad_detail, only: [:index, :show]
    resources :categories, only: [:show]
    resources :comments, only: [:create]
  end

  get 'backoffice', to: 'backoffice/dashboard#index'

  devise_for :admins, :skip => [:registration]
  devise_for :members , controllers: {
    sessions: 'members/sessions',
    registrations: 'members/registrations' 
  }
  get 'home/index'
  root 'site/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
