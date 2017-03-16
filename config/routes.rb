Rails.application.routes.draw do
  root 'topics#index'
  resources :topics
  resources :articles
  get 'welcome/index'
  get 'articles/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end