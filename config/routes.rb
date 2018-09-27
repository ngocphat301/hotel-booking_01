Rails.application.routes.draw do
  root "static_pages#home"
  get "/home", to: "static_pages#home", as: :home
  get "/about", to: "static_pages#about", as: :about
  get "/help", to: "static_pages#help", as: :help
  get "/contact", to: "static_pages#contact", as: :contact
  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  get "/hotel", to: "hotels#index"
  get "/hotel/:id/order", to: "hotels#order", as: :order_hotel
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :users 
end
