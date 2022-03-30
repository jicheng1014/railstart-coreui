# frozen_string_literal: true

require 'sidekiq/web'
require 'sidekiq-scheduler/web'

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }


  # for sidekiq
  
  authenticate :user, ->(user) { user.present? } do
    mount Sidekiq::Web => '/admin/sidekiq'
  end

  root 'home#index'

  namespace :admin do
    root 'components#dashboard'
    resources :users

    resource :components do
      get :pages
      get :dashboard
      get :typography
      get :charts
      get :colors
      get :widgets
      get :base_toast
      get :base_accordion
      get :base_breadcrumb
      get :base_cards
      get :base_carousel
      get :base_collapse
      get :base_list
      get :base_navs
      get :base_pagination
      get :base_placeholders
      get :base_popovers
      get :base_progress
      get :base_scrollspy
      get :base_spinners
      get :base_tables
      get :base_tooltips

      get :button_buttons
      get :button_button_group
      get :button_dropdowns

      get :form_form_control
      get :form_select
      get :form_checks_radios
      get :form_range
      get :form_input_group
      get :form_floating_labels
      get :form_layout
      get :form_validation

      get :icon_free
      get :icon_brand
      get :icon_flag

      get :notifications_alerts
      get :notifications_badge
      get :notifications_modals
      get :notifications_toasts

      get :page_login
      get :page_register
      get :page_404
      get :page_500
    end
  end
end
