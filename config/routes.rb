# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#homepage'
  devise_for :users
  resources :repairs
  resources :volunteers
  resources :owners

end
