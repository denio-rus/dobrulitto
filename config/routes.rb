Rails.application.routes.draw do
  devise_for :users
  root to: "watercolors#index"
  
  resources :genres, only: [:index, :create, :update, :destroy]
  resources :watercolors
  resources :materials, except: [:show, :new, :edit]
  resources :albums do
    resources :sketches, only: [:create, :update, :destroy, :new, :edit], shallow: true
  end
end
