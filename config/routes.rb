Rails.application.routes.draw do
  devise_for :users
  root to: "watercolors#index"
  
  resources :watercolors, only: [:index, :show]
  resources :albums, only: [:index, :show] do
    resources :sketches, only: :show, shallow: true
  end

  resources :posts, only: [:index, :show] do
    resources :comments, only: [:create, :update, :destroy], shallow: true
  end

  namespace :admin do
    resources :genres, only: [:index, :create, :update, :destroy]
    resources :disciplines, only: [:index, :create, :update, :destroy]
    resources :materials, except: [:show, :new, :edit]
    
    resources :watercolors do
      post :sort, on: :collection
    end
    
    resources :posts do
      resources :comments, shallow: true
    end

    resources :courses do
      resources :lessons, only: [:create, :update, :destroy, :new, :edit], shallow: true
    end
    
    resources :albums do
      resources :sketches, only: [:create, :update, :destroy, :new, :edit], shallow: true
    end
  end
end
