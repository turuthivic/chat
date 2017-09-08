Rails.application.routes.draw do
 root "home#home"
 get "home/about"
 get "home/contact"
 get "home/gallery"

 resources :messages
 resources :chatrooms, only: [:new, :create, :show, :index]
 devise_for :users, controller: {registrations: "registrations"}

 #serve websocket cable requests
 mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
