Rails.application.routes.draw do
  devise_for :users
  resources :topics
  resources :groups do
    member do
      post :join
      post :quit
    end
    resources :posts
  end

  namespace :account do
    resources :groups
    resources :posts
  end

  # root 'topics#index'
  resources :articles
  # root 'welcome#index'
  root 'groups#index'
  get 'articles/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
