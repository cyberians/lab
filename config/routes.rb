Rails.application.routes.draw do


  resources :contracts
  resources :insurance_types
  resources :autos
  resources :insurers
  resources :clients
	root 'contracts#index'

  match '/contracts', to: 'contracts#index', via: 'get'
  match '/insurance_types', to: 'insurance_types#index', via: 'get'
  match '/autos', to: 'autos#index', via: 'get'
  match '/insurers', to: 'insurers#index', via: 'get'
  match '/clients', to: 'clients#index', via: 'get'



end
