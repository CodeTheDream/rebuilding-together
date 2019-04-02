# frozen_string_literal: true

Rails.application.routes.draw do
  root 'welcome#homepage'
  devise_for :users
  resources :repairs
  # resources :volunteers
  resources :owners
  
# get "/add_repair" => "volunteers#add_repair"
 
 resources :volunteers do
   member do 
     post "add_repair"
     delete "remove_repair"
    end
    collection do
      get "add_repair"
    end
   end
end
