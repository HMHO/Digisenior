Rails.application.routes.draw do
  devise_for :usercs
  resources :agendas
  resources :agenda_cita
  resources :cita
  resources :usuarios
  get 'principal/index'
  root to: 'principal#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :usercs, only: [ :index]
    end
  end
end
