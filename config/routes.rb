Rails.application.routes.draw do
  get 'entries/index'
  get 'entries/show'
  get 'entries/new'
  get 'entries/edit'
  get 'passwords/edit'
  root "top#index"
  get "about" => "top#about", as: "about"
  get "bad_request" => "top#bad_request"
  get "forbidden" => "top#forbidden"
  get "internal_server_error" => "top#internal_server_error"

  resources :members do
    get "search", on: :collection
    resources :entries, only: [:index]
  end

  resource :session, only: [:create, :destroy]
  resource :account, only: [:show, :edit, :update]
  resource :password, only: [:show, :edit, :update]

  resources :articles
  resources :entries
end
