Rails.application.routes.draw do


  resources :entries
  # get '/entries', to: 'entries#show'
  # post '/entries', to: 'entries#create'
  # delete '/entries/:id', to: 'entries#destroy'
  # get '/entries/:id/edit', to: 'entries#edit'
  # patch '/entries/:id', to: 'entries#update'


  resources :prompts

  namespace :api do
    namespace :v1 do
      resources :users
      
      post '/auth', to:'auth#create'
      # get'/current_user', to:'auth#show'

    end
  end

end