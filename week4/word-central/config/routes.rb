Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home', to: 'site#home'
  get '/text_inspections', to: 'site#text_inspections', as: :text

end
