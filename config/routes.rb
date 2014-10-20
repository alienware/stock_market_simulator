Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'visitors#index'
  devise_for :users
  resources :users

  resources :companies
  resources :company_portfolios
end
