Rails.application.routes.draw do
  # CREATE
  # Display the form:
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # Handle the POST request:
  post '/tasks', to: 'tasks#create', as: :tasks

  # READ
  # List all tasks
  get '/tasks', to: 'tasks#index'

  # list one task
  get '/tasks/:id', to: 'tasks#show', as: :task

  # UPDATE
  # List the task to edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # Update it
  patch '/tasks/:id', to: 'tasks#update'

  # DESTROY
  delete '/tasks/:id', to: 'tasks#destroy'
end
