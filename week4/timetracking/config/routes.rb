Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'
  get '/say_name/:name', to: 'site#say_name'
  get '/calculator', to: 'calculator#add_form'
  post '/calculator', to: 'calculator#process_addition'
  get '/projects', to: 'projects#index'
  # 											project_path, could be in quotes

  get '/projects/new', to: 'projects#new'
  get '/projects/:id', to: 'projects#show', as: :project
  post '/projects', to: 'projects#create'
  get 'projects/:project_id/time_entries', to: 'time_entries#index', as: :project_time_entries_index
  get 'projects/:project_id/time_entries/new', to: 'time_entries#new', as: :new_project_time_entry
  post 'projects/:project_id/time_entries', to: 'time_entries#create', as: :project_time_entries

  
end
