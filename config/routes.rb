Rails.application.routes.draw do

  devise_scope :user do
    get '/users', to: 'devise/registrations#new'
    get '/users/password', to: 'devise/passwords#new'
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users
  resources :friends
  # get 'home/index'
  get 'home/about'
  
  # root 'home#index'
  root 'friends#index'
end
