Rails.application.routes.draw do

  get "api/v1/login", to: "api/v1/sessions#create"
  get "api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  
  # Want API domain to be projask.com/api/v1/resource
  namespace :api do
    namespace :v1 do 
      resources :users
      resources :projects
      resources :tasks
    end
  end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
