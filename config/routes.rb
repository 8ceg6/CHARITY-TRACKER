Rails.application.routes.draw do
  resources :donations
  resources :donors
  resources :charities

  resources :donors do 
    resources :donations, only: [:new, :index]
  end 
  get '/' => 'session#index'
  get '/signin' => 'session#new'
  post '/signin' => 'session#create'  
  get '/logout' => 'session#destroy'
  get '/session/new'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
