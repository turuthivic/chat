Rails.application.routes.draw do
 root "chatroom#index"
 resources :messages
 resources :chatrooms, :path => "chatroom"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
