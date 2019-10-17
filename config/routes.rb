Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :cases do
	resources :scans
	end

resources :protocols do
	resources :scans
end

  root 'home#index'
end
