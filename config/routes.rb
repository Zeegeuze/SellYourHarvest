Rails.application.routes.draw do
  devise_for :users

  resources :sellers do
    resources :products do
      resources :orders
    end
  end

  root to: 'pages#home'
  get 'T&Q', to: 'pages#TQ', as: :TQ
  get 'FAQ', to: 'pages#FAQ', as: :faq
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about
end
