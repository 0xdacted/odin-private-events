Rails.application.routes.draw do
  devise_for :users
  
  resources :events, only: [:new, :create, :index, :show]
  resources :rsvps, only: [:create]
  devise_scope :user do
    get 'users/:id' => 'users#show' 
  end

  scope do
    get 'events/:id' => 'events#show' 
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
end
