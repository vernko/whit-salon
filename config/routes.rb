Rails.application.routes.draw do
  resources :services, except: [:show]
  get 'service/:id', to: 'services#show', as: 'service_show'

  resources :transformations, except: [:show]
  get 'transformation/:id', to: 'transformations#show', as: 'transformation_show'

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
 

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  
  root to: 'pages#home'
end
