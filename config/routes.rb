Rails.application.routes.draw do
  get 'passwords/edit'
  root "top#index"
  get "about" => "top#about", as: "about"

  resources :members do
    get "search", on: :collection
  end

  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
  resource :password, only: [:show, :edit, :update]
end
