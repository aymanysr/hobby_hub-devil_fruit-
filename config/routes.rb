Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users
  # Defines the root path route ("/")
  resources :users
  resource :shopping_cart, only: %i[show] do
    resources :cart_items, only: %i[show create update destroy]
  end
  resources :devil_fruits
end
