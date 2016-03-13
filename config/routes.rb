Rails.application.routes.draw do


  resources :contracts
  resources :insurance_types
  resources :autos
  resources :insurers
  resources :clients
	root 'contracts#index'



end
