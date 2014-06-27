HackItLevel1::Application.routes.draw do
  root 'static_pages#home'
  
  match '/admin',     to: 'static_pages#admin',     via: 'get'
  match '/converter', to: 'static_pages#converter', via: 'get'
  match '/what',      to: 'static_pages#what',      via: 'get'

  match '/updateField', to: 'static_pages#update_field', via: 'post'

  match '/admin',       to: 'static_pages#update_rate', via: 'post'
end
