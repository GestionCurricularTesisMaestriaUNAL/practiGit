Rails.application.routes.draw do
  resources :messages
  root to: 'pages#index'
  get 'aboutUS', to: 'pages#aboutUS'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'contactUS', to: 'pages#contactUS'
end
