Rails.application.routes.draw do
  match '/users',   to: 'users#index',   via: 'get'
  devise_for :users, :controllers => { registrations: "registrations"} do
    resources :events
  end
  resources :events
  root to: 'events#index'
  
  resources :enrollments, only: [:create, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
