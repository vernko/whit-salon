Rails.application.routes.draw do
  resources :services
  resources :transformations
  resources :portfolios
  resources :blogs

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  root to: 'pages#home'
end
