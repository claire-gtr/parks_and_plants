Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [:create]
  end
  resources :plants, only: [:destroy]

  # get '/gardens', to: "gardens#index", as: :parks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
