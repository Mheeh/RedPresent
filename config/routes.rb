Rails.application.routes.draw do
  resources :payments
  resources :balances
  resources :collaborations
  resources :users do
    resources :presents
    resources :balances
    resources :payments
  end
  resources :presents do
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
