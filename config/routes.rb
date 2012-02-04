Blog::Application.routes.draw do
  root :to => "articles#index"
  
  resources :articles do
    resources :comments
  end
  
  resources :users
  resource :session
  
  match '/login' => "session#new", as => "login"
  match '/logout' => 'session#destroy', as => "logout"
end
