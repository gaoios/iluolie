Rails.application.routes.draw do
  resources :topics
  # root 'topics#index'
  resources :articles
  root 'welcome#index'
  get 'articles/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
