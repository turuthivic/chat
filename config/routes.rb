Rails.application.routes.draw do
  get 'chatrooms/index'

  get 'chatrooms/show'

  get 'chatrooms/form'

  get 'chatrooms/new'

  get 'chatrooms/edit'

  get 'messages/index'

  get 'messages/show'

  get 'messages/form'

  get 'messages/new'

  get 'messages/edit'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
