Rails.application.routes.draw do
  root to: 'sessions#new'

  resources :reviews
  resources :bookings
  resources :instruments
  resources :teachers
  resources :students
  resources :teachers
  resources :lessons
  resources :sessions, only: %i[create destroy]

  get '/teachers/:teacher_id/lessons', to: 'lessons#index_teacher_lessons', as: :teacher_lessons

  get '/login', to: 'sessions#new', as: :login
  delete '/logout', to: 'sessions#destroy', as: :logout
end
