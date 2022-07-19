Rails.application.routes.draw do
  resources :appliedjobs
  resources :jobs
  get 'home/index'
  devise_for :users
  root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'appliedjobs/new/:id' => 'appliedjobs#new', :as => 'apply'


  # Defines the root path route ("/")
  # root "articles#index"
end
