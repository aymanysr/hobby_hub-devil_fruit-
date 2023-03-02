Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users
  # Defines the root path route ("/")
  resources :users
  resource :shopping_cart, only: %i[show]
  resources :devil_fruits do
    resources :cart_items, only: %i[create]
  end
  resources :cart_items, only: %i[show update destroy]

  get "search", to: "devil_fruits#search"
end
