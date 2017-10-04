Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
  	resources :perosons, except: [:edit]
  end
  resources :perosons
  root 'perosons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
