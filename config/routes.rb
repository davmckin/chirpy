Rails.application.routes.draw do
  resources :chirps
  resources :users
  resources :users do
      resources :messages, only: [:index]
  end

end
