Rails.application.routes.draw do
resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
scope "/api" do
  resources :sandwich_ingredients
  resources :ingredients, except: [:new, :edit]
  resources :sandwiches, except: [:new, :edit]
  post "/sandwiches/:id/ingredients/add" , to: "sandwiches#add_ingredient"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
end


