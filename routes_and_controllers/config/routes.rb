Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create, :show, :update, :destroy]

  # get "/users/", to: "users#index"
  # get "/users/new", to: "users#new", as: 'new_user'
  # post "/users/", to: "users#create"
  # get "/users/:id/edit", to: "users#edit", as: 'edit_user'
  # patch "/users/:id", to: "users#update"
  # put "/users/:id", to: "users#update"
  # delete "/users/:id", to: "users#destroy"
  # get "/users/:id", to: "users#show", as: 'user'
end
