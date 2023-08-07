Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get '/libaries/:library_id/books', to: 'books#index'

  namespace :api do
    resources :libraries, only: [] do
      resources :books, only: [:index]
    end
  end
end
