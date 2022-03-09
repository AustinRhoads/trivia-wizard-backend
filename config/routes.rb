Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  #get '/api/v1/join_game/:code', to: '/api/v1/quizzes#join_game'
 
  

  resources :sessions

  namespace :api do
    namespace :v1 do
      resources :users
      resources :games
      resources :quizzes
      #get '/join_game/:code', to: 'quizzes#join_game'
      get '/join_game/:code', to: 'games#join_game'
    end
  end

 

end
