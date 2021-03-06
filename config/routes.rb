Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/buildings', to: 'buildings#index', as: 'buildings'
  # get '/buildings/:id', to: 'buildings#show', as: 'building'
  resources :buildings, only: [:index, :show, :edit, :update]
  resources :companies, only: [:index, :new, :show, :update]
  resources :employees, only: [:new, :create, :edit, :update]

end
