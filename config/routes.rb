Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'subs#index'

  # get '/subs', to: 'subs#index'
  # get '/subs', to: 'subs#show'
  # get '/subs/:id', to: 'subs#edit'

  resources :subs do
  resources :topics 
  end
  # resources :topics do 
  #   resources :comments
  # end
end
