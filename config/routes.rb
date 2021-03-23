Rails.application.routes.draw do
  resources :entries
  resources :prompts

  namespace :api do 
    namespace :v1 do
      resources :users
      post '/auth', to:'auth#create'
    end
  end
end