# frozen_string_literal: true

Rails.application.routes.draw do
  resources :projects
  get 'home/index'
  devise_for :users
  resources :tasks

  authenticated :user do
    root 'tasks#index', as: :authenticated_root
  end
  root 'home#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
