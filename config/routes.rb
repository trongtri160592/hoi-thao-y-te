Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root             'static_pages#home'
  get '/admin' =>  'sessions#new'
  post '/admin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/content/new' => 'contents#new'
  post '/content/new' => 'contents#create'
  post '/contents' => 'contents#create'
  get '/content' => 'contents#edit'

  get '/quan-ly' => 'managers#index'
  resources :contents, only: [:new, :create, :destroy]

end
