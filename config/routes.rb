Rails.application.routes.draw do
  root "session#index"
  resources :donations
  resources :donors
  resources :charities

  resources :donors do 
    resources :donations, only: [:new, :index, :show]
  end 
  # get '/' => 'donors#index'
  get '/login' => 'session#new'
  post '/login' => 'session#create'  
  get '/logout' => 'session#destroy'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
 
  get '/auth/github/callback' => 'sessions#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
