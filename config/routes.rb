Rails.application.routes.draw do
  get 'shopping_carts/show'
  get 'shopping_carts/edit'
  get 'shopping_carts/update'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :shopping_carts, only: %i[show edit update]
  resources :devil_fruits
end
