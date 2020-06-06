Rails.application.routes.draw do
  resources :donations
  resources :donors
  resources :charities

  resources :donors do 
    resources :donations, only: [:new, :index]
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
