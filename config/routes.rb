Rails.application.routes.draw do

  get 'bootstrap/index'
  devise_for :consultations

  resources :jobs
  resources :consultations do
    resources :clients
  end

  namespace :consultation do
    resources :clients
  end

  resources :consultations do
    resources :employees
  end

  namespace :consultation do
    resources :employees
  end

  get 'home/index'
  get 'home/about'

 root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
