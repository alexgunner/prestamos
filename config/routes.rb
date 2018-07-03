Rails.application.routes.draw do
  root to: 'sessions#index'
  get '/loans' => 'loan#index'
  
  get '/dashboard/:id' => 'main#dashboard'
  
  # Sessions
  get '/create_user' => 'sessions#create_user'
  get '/update_user/:id' => 'sessions#update_user'
  get '/activate/:token' => 'sessions#activate'
  get '/login' => 'sessions#login'
  get '/start_session' => 'sessions#start_session'
  get '/recover_password/:token' => 'sessions#recover_password'
  get '/change_password/:id' => 'sessions#change_password'
  get '/update_password/:id' => 'sessions#update_password'
  
  # User
  get '/profile/:id' => 'main#profile'
  
  
  
  get '/error' => 'main#error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
