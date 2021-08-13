Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  get 'dashboard', to: 'pages#dashboard', as: :dashboard #dashboard_path
  resources :missions do
    resources :quotations, only: [:create, :new]
  end
  resources :handymen
  resources :quotations, only: [:destroy, :edit]
  patch '/quotations/:id/approve', to: 'quotations#approve', as: :approve_quotation
  patch '/quotations/:id/decline', to: 'quotations#decline', as: :decline_quotation
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
