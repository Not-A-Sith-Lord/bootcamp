Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :concerts
  get '/', to: "site#home", as: :home
end
