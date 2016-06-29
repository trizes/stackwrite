Rails.application.routes.draw do
  root 'home#index'

  resources :authors, only: [:show, :update] do
    resources :posts, only: [:index, :create, :update, :destroy] do
      resources :comments, only: [:index, :create, :update, :destroy]
    end
  end

  get 'auth/:provider/callback', to: "sessions#create"
  delete 'sign_out', to: 'sessions#destroy', as: 'sign_out'
end
