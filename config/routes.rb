Rails.application.routes.draw do
  resources :appliedjobs
  resources :jobs
  get 'home/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'appliedjobs/new/:id' => 'appliedjobs#new', :as => 'apply'
  get '/applied' => 'jobs#applied', as: 'listjob'
  
  root "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
