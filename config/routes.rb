Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations"}
  resources :events
  root to: 'events#index'
  
  resources :enrollments, only: [:create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'users/show', to: "registrations#show"
end
