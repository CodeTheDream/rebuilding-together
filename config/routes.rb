# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :repairs

  resources :volunteers
  resources :owners

end
