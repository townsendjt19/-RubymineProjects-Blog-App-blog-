Rails.application.routes.draw do
  get 'comments/_form'
  get 'comments/_comment'
  get 'articles/edit'
  get 'articles/_form'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "articles#index"

  # get "/articles", to: "articles#index"
  #
  # get "/articles/:id", to: "articles#show"



  resources :articles do
    resources :comments
  end


end
