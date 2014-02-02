SampleApp::Application.routes.draw do
  get "users/new"
  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'  #same as get "static_pages/help
  match '/about',   to: 'static_pages#about',   via: 'get'  #same as get "static_pages/about
  match '/contact', to: 'static_pages#contact', via: 'get'  #same as get "static_pages/contact
  match '/signup',  to: 'users#new',            via: 'get'
  
  resources :users
end
