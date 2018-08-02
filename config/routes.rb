Rails.application.routes.draw do
  root to: 'sessions#homepage'

  resources :reviews
  resources :bookings
  resources :instruments
  resources :teachers
  resources :students
  resources :teachers
  resources :lessons
  resources :sessions, only: %i[create destroy]

  get '/teachers/:teacher_id/lessons', to: 'lessons#index_teacher_lessons', as: :teacher_lessons

  get '/instruments/:instrument_id/lessons', to: 'lessons#index_instrument_lessons', as: :instrument_lessons

  get '/login', to: 'sessions#new', as: :login
  delete '/logout', to: 'sessions#destroy', as: :logout
end
