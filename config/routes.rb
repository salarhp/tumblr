Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/create'
  get 'comments/update'
  get 'comments/destroy'
  resources :posts  do
    resources :comments
  end
  root "posts#index"
  get "/about" , to: 'pages#about'
end
