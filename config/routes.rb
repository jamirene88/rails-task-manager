Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # R - read
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  # get 'restaurants/:id/edit', to: 'restaurants#edit'

  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # C - create

  post 'tasks', to: 'tasks#create'


  patch 'tasks/:id', to: 'tasks#update'
# patch 'restaurants/:id', to: 'restaurants#update'

  delete "tasks/:id", to: "tasks#destroy"
end
