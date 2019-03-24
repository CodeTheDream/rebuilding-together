# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :repairs
  
  get 'volunteers/index'
  get 'volunteers/new'
  
  resources :volunteers
end
