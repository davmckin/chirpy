Rails.application.routes.draw do
  resources :chirps
  resources :users do
      resources :chrips, only: [:index]
  end

  post '/login' => 'sessions#create'
  delete "/logout" => 'session#destroy'
  post '/follow/:id' => 'follow#follow'
  post '/unfollow/:id' => 'follow#unfollow'

  root 'chirps#index'
end
