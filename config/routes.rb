Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #CRUD
  # verb 'path', to: 'controller#action'
  #read all tasks
  get '/tasks', to: 'tasks#index'
  #create one task>> 2 step
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'
  #read one task
  get '/tasks/:id', to: 'tasks#show', as: :task


  #update one task >> 2 step
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to:'tasks#update'
  #delete one task
  delete '/tasks/:id', to:'tasks#destroy'

  # resources: tasks
end
