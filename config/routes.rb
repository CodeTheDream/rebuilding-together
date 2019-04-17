# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#homepage'
  devise_for :users
  resources :repairs
  resources :owners

  resources :volunteers do
    member do
      post 'add_repair'
      delete 'remove_repair'
    end
    collection do
      get 'added_repairs'
    end
  end
end
