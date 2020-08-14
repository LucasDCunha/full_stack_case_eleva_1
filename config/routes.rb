Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pages/home', to: 'pages#home'
  root to: 'pages#home'
  # resources :school, only: :destroy
  resources :schools do
    resources :groups, only: [:new, :create, :destroy]
  end
end
