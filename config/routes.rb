Rails.application.routes.draw do

  devise_for :users
    resources :users, :only => [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :locations

  resources :maps

  resources :waterbottles

  root to: "maps#show"

  post '/assign/waterbottle' => "waterbottles#assign"
  post '/assign/user' => "users#assign"
end
