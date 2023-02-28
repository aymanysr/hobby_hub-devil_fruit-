Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users
  # Defines the root path route ("/")
  resources :users do
    resources :shopping_carts, only: %i[show edit update] do
      resources :cart_items, only: %i[show edit update destroy]
    end
  end
  resources :devil_fruits
end
