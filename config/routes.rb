Rails.application.routes.draw do
  resources :tasks
  resources :users
  patch 'tasks/complete/:id', to: 'tasks#done'
end
