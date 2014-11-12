Rails.application.routes.draw do  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :usuarios
  resources :consultas 
  resources :avaliaca_medicos 
  resources :medicos  
  root to: "home#index" 
end
