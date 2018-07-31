Rails.application.routes.draw do
  resources :reviews
  resources :bookings
  resources :lessons
  resources :instruments
  resources :teachers
  resources :students
end
