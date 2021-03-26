Rails.application.routes.draw do
  resources :entries
  post '/entries', to: 'entries#create'

  resources :prompts

  namespace :api do
    namespace :v1 do
      resources :users
      post '/auth', to:'auth#create'

    end
  end

end