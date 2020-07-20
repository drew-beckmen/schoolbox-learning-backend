Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:show, :create]
      resources :enrollments, only: [:show, :create]
      resources :courses, only: [:index, :show, :create]
      resources :platforms, only: [:index, :show, :create]
      resources :lessons, only: [:index, :show, :create, :update, :destroy]
      resources :flashcards, only: [:index, :show, :create, :update, :destroy]
    end 
  end 
end
