Rails.application.routes.draw do
  root to: "watercolors#index"

  resources :watercolors

  resources :albums do
    resources :sketches, only: [:create, :update, :destroy]
  end
end
