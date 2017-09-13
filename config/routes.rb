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
  get '/noi-dung/:content_id' => 'contents#show'
  delete '/contents/:content_id' => 'contents#destroy'
  
  get '/registrars' => 'registrars#index'

  get '/quan-ly' => 'managers#index'
  get '/dang-ky' => 'event#register'
  post '/dang-ky' => 'event#save'

  get '/sponsors' => 'sponsors#index'
  post '/sponsors/:id' => 'sponsors#create'
end
