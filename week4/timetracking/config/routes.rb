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
  
end
