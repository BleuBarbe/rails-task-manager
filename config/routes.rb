Rails.application.routes.draw do
  # create
  get 'tasks/new', to: 'tasks#new', as: :new
  post 'tasks', to: 'tasks#create'
  #edit : En tant qu’utilisateur, je peux éditer une tâche (la marquer comme terminée / mettre à jour le titre et les détails)
  get 'task/:id/edit', to: 'tasks#edit', as: :edit
  patch 'task/:id', to: 'task#update'
  # index
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show', as: :task
  # En tant qu’utilisateur, je peux supprimer une tâche
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end
