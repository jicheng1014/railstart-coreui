Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  namespace :admin do
    resource :users

    resource :components do
      get :pages
      get :dashboard
      get :base
      get :buttons
      get :forms
      get :typography    
      get :chart
      get :icons
      get :widgets
    end
  end
end
