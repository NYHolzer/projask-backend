Rails.application.routes.draw do

  
  resources :tasks
  # Want API domain to be projask.com/api/v1/resource
  namespace :api do
    namespace :v1 do 
      resources :users
      resources :projects
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
