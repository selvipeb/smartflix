Rails.application.routes.draw do
  get 'films/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'films#index'
  resources :films, only: [:index]
end
