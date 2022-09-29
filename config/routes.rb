Rails.application.routes.draw do
  devise_for :users
  
  resources :events do
    member do
      put '/events/:id', to: 'rsvps#rsvp', as: :rsvp
    end
  end

  resources :rsvps

  devise_scope :user do
    get 'users/:id' => 'users#show' 
  end

  scope do
    get 'events/:id' => 'events#show' 
    post "events/:id", to: "events#rsvp" 
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
end
