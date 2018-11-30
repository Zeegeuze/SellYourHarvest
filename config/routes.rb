Rails.application.routes.draw do
  resources :customers
  resources :orders

  resources :sellers do
    resources :products
  end

  root to: 'pages#index'
  get 'T&Q', to: 'pages#TQ', as: :TQ
  get 'FAQ', to: 'pages#FAQ', as: :FAQ
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about
end
