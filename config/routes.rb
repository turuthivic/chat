Rails.application.routes.draw do
 root "chatrooms#index"
 resources :messages
 resources :chatrooms, param: :slug
 devise_for :users

 #serve websocket cable requests
 mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
