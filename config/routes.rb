Rails.application.routes.draw do
  get 'set_language/vietnames'

  get 'set_language/english'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", :locale => /en|vi/ do
    root 'static_pages#home'
    get '/admin' => 'sessions#new'
    post '/admin' => 'sessions#create'
    get '/logout' => 'sessions#destroy'
    get '/signup' => 'users#new'
    post '/users' => 'users#create'

    get '/content/new' => 'contents#new'
    post '/content/new' => 'contents#create'
    post '/contents' => 'contents#create'
    get '/contents/edit/:id' => 'contents#edit'
    post '/contents/edit/:id' => 'contents#update'
    get '/content' => 'contents#edit'
    get '/noi-dung/:content_id' => 'contents#show'
    delete '/contents/:content_id' => 'contents#destroy'

    get '/registrars' => 'registrars#index'

    get '/quan-ly' => 'managers#index'
    get '/dang-ky' => 'event#register'
    post '/dang-ky' => 'event#save'

    get '/sponsors' => 'sponsors#index'
    post '/sponsors' => 'sponsors#create'
    delete '/sponsors/:id' => 'sponsors#destroy'
    get '/news' => 'news#index'
    post '/news' => 'news#edit'
    get '/contents/:content_id/new' => 'contents#new_subcontent'

    post '/contents/:content_id/new' => 'contents#add_subcontent'
    get '/noi-dung/phu-luc/:id' => 'contents#show_subcontent'
    get '/subcontents/edit/:id' => 'contents#edit_subcontent'
    delete '/subcontents/:id' => 'contents#destroy_subcontent'
    post 'subcontents/edit/:id' => 'contents#update_subcontent'

    get '*path' => redirect("/")
  end
end
