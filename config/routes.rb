Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "main#index"
  get "/main", to: "main#index"

  resource :session, only:[:new, :create, :destroy]

  resources :users, only: [:new, :create]



resources :games do

  resources :topics do

      resources :comments

  end

end


resources :topics do

  resources :comments

end

resources :rentals 

end
