Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read all
  get 'tasks', to: 'tasks#index'
   # Create new
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'
  # Read one
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # Delete a task
  # delete 'tasks/:id', to: 'tasks#destroy'
  delete "/tasks/:id", to: "tasks#destroy"
end
