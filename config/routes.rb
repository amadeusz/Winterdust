Czytnik::Application.routes.draw do

	get "login/index"

	get "call/import"
	get "call/test"

	root :to => 'login#index'
	resources :wares

end
