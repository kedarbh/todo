# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  devise_for :users

  authenticated :user do
    resources :dashboards, only: :show
    root 'dashboards#show', as: :authenticated_root
    resources :projects
    resources :tasks
  end
  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
