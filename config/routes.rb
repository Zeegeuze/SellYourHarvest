Rails.application.routes.draw do
  root to: 'pages#index'
  get 'T&Q', to: 'pages#TQ'
  get 'FAQ', to: 'pages#FAQ', as: :FAQ
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers

  resources :sellers do
    resources :products
  end

  resources :orders
end
