uRails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/', to: 'contacts#index'
    get '/new', to: 'contacts#new'
	post'/contacts', to: 'contacts#create'
	get '/contacts/:id', to: 'contacts#show', as: :show
	get '/projects/:project:id/time_entries/new', to: 'time_entries#new', as: 'new_project_time_entry'
end
