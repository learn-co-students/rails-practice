Rails.application.routes.draw do

  resources :authors
  resources :books, only: [:index, :show]
  # resources :authorships, only: [:create]
  get "/", to: "welcome#index"

  resources :books, param: :id do
    resources :authorships, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
