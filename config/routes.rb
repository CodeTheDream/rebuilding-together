# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/homepage'
  devise_for :users
  resources :repairs
  root 'welcome#homepage'
  resources :volunteers

end
