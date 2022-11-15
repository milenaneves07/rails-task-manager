Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # verb 'path', to: 'controller#action'

  # READ all restaurants
  get "tasks", to: "tasks#index"

  # CREATE a restaurant
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # READ one restaurant
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE a restaurant
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task # GET the HTML form (pre-filled with restaurant attributes) for editing = 1 request
  patch 'tasks/:id', to: 'tasks#update' # PATCH the parameters to update an existing restaurant = 1 request

  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy_task
end
