Rails.application.routes.draw do
  resources :chirps
  resources :users do
      resources :chrips, only: [:index]
  end

  post '/login' => 'sessions#create'

end
