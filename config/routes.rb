Rails.application.routes.draw do
  resources :orders
  root 'orders#index'
  get '/print', to: 'orders#print'
  post '/print', to: 'orders#printi'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
