Rails.application.routes.draw do
  resources :students
  resources :lessons
  resources :availabilities
  resources :teachers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
