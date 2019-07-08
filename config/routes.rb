Rails.application.routes.draw do
  resources :bros
  resources :scooters
  root "/bros", to: 'bros#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
