Rails.application.routes.draw do
  devise_for :users,
   controllers: { registrations: 'registrations' }
  root to: "pages#index"
  resources :pages
  resources :users, only:[:show]
end
