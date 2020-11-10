Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

get 'tasks', to: 'tasks#index'
get 'tasks/new', to: 'tasks#new', as: :newit
post 'tasks', to: 'tasks#create'
delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
get 'tasks/:id', to: 'tasks#show', as: :task
get 'tasks/:id/edit', to: 'tasks#edit', as: :editit
patch 'tasks/:id', to: 'tasks#update'

end
