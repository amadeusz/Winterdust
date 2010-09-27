Czytnik::Application.routes.draw do

  resources :units

  resources :payments

  resources :groups

  resources :vats

	get "login/index"

	get "call/import"
	get "call/test"

	root :to => 'login#index'
	resources :wares

end
