Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do

    collection do
      get :reviews

  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"

  get "restaurants", to: "restaurants#index"

  get "restaurants/reviews/new", to: "restaurants#new"
  post "restaurants/reviews", to: "restaurants#create"
  end

end
