Rails.application.routes.draw do
  devise_for :users
  resources :users
  
  resources :events do
    member do
      put '/events/:id', to: 'rsvps#rsvp', as: :rsvp
    end
  end

  resources :rsvps

  devise_scope :user do
    get 'users/:id' => 'users#show' 
    get 'users/sign_out' => "devise/sessions#destroy"
    get 'users/sign_in' => "devise/sessions#new_user_session_path"
    get 'users/sign_up' => "devise/sessions#new_user_registration_path"
    get 'users/profile' => 'users#show'
  end

  scope do
    get 'events/:id' => 'events#show' 
   
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
end
