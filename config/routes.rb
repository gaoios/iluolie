Rails.application.routes.draw do
  resources :topics
  resources :articles
  get 'welcome/index'
  get 'articles/new'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
