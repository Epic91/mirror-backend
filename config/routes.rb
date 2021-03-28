Rails.application.routes.draw do
  resources :entries
  post '/entries', to: 'entries#create'
  get '/entries', to: 'entries#show'
  delete '/entries/:id', to: 'entries#destroy'
  patch '/entries/:id', to: 'entries#update'

  resources :prompts

  namespace :api do
    namespace :v1 do
      resources :users
      
      post '/auth', to:'auth#create'
      # get'/current_user', to:'auth#show'

    end
  end

end