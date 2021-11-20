Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # pages routes
  get 'acerca' => 'pages#acerca'
  get 'garantia' => 'pages#garantia'
  get 'aviso_de_privacidad' => 'pages#aviso_de_privacidad'
  get 'preguntas_frecuentes' => 'pages#preguntas_frecuentes'
  get 'terminos_de_servicio' => 'pages#terminos_de_servicio'
  get 'careers' => 'pages#careers'
  get 'arrendador' => 'pages#arrendador'
  get 'arrendatario' => 'pages#arrendatario'

  # user profile
  get 'dashboard' => 'profile#dashboard'
  get 'perfil' => 'pages#perfil'

  # product routes
  resources :products
end
