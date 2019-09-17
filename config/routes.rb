Rails.application.routes.draw do
  devise_for :users,
    controllers: { registrations: 'registrations' }

  get 'tops/index'
  root to: 'tops#index'

  get '/users/:id', to: 'users#show', as: 'user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
