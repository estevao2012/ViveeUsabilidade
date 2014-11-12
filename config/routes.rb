Rails.application.routes.draw do  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :usuarios, :controllers => { :registrations => "registrations" }
  resources :consultas 
  resources :avaliaca_medicos 
  resources :medicos   

  post 'seguir/:medico_id' , to: "home#seguir"
  post 'desseguir/:medico_id' , to: "home#desseguir"

  get 'concluir-cadastro', to: "home#concluir_cadastro"
  post 'salva-dados', to: "home#salva_dados_usuario", :as => :salva_usuario
  root to: "home#index" 
end
