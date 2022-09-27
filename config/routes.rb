Rails.application.routes.draw do
  devise_for :users
  
  get 'event/index'
  get 'users/:id' => 'users#show'
  get 'event/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
end
