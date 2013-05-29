Randomons::Application.routes.draw do
  root :to => "admin/dashboard#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)
  
  
  namespace :api, constraints: { format: /json/ } do
    namespace :v1 do
      devise_scope :user do
        post 'registrations' => 'registrations#create', :as => 'register'
        post 'sessions' => 'sessions#create', :as => 'login'
        delete 'sessions' => 'sessions#destroy', :as => 'logout'
      end

      resources :events, :only => :index
      resources :species, :populations, :moves, :medical_centers, :shops, :only => [:index, :show]
      resources :creatures, :only => [:index, :show, :create, :update, :destroy]
    end
  end
end
