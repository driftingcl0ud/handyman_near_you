Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :missions, only: [:index, :show, :new, :create] do
  resources :handymen 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
