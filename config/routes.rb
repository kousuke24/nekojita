Rails.application.routes.draw do
  #get 'twitters/index'

  devise_for :users,
    controllers: { registrations: 'registrations', omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'tops/index'
  root to: 'tops#index'

  get '/users/:id', to: 'users#show', as: 'user'
  patch 'users/:id', to: 'users#update'
  #get '/users/edit/:id', to: 'users#edit', as: 'edit_user'

  resources :posts, only: %i(new create show destroy) do
    resources :photos, only: %i(create)
    resources :likes, only: %i(create destroy)
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
