Rails.application.routes.draw do

  resources :questions do
      resources :answers
    end


  get '/' => 'questions#index'
  get '/login' => 'users#login'
  put '/login' => 'users#update'
  get '/signup' => 'users#signup'
  post '/signup' => 'users#create'
  delete '/logout' => 'users#destroy'
end