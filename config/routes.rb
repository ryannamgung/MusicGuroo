Rails.application.routes.draw do
  resources :reviews
  resources :bookings
  resources :instruments
  resources :teachers
  resources :students
  resources :teachers
  resources :lessons

  get '/teachers/:teacher_id/lessons', to: 'lessons#index_teacher_lessons', as: :teacher_lessons

end
