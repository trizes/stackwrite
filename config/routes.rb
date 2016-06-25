Rails.application.routes.draw do
  root 'home#index'
  get 'stack/:id' => 'posts#show', as: 'stack'
  post 'stack/:id' => 'posts#create', as: 'stack_create'
  get 'auth/:provider/callback', to: "sessions#create"
  delete 'sign_out', to: 'sessions#destroy', as: 'sign_out'
end
