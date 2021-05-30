Rails.application.routes.draw do
  root "home#show"

   devise_for :users
  resources :prompts
  resources :prompts_answers
  resources :date_requests
  resources :photos
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
