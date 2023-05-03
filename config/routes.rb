# frozen_string_literal: true

Rails.application.routes.draw do
  root 'rides#index'
  devise_for :accounts
  scope module: 'api/v1', path: 'api/v1' do
    resources :rides, only: [:index]
  end
  resources :rides, only: [:index, :show, :create]
end
