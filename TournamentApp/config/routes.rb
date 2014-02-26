TournamentApp::Application.routes.draw do
 
  # devise_for :users
root "events#home" 

 
resources :users
resources :sessions

# post '/login' => 'users#login'

get "/logout" => "sessions#destroy", as: 'logout'

resources :events

resources :tournaments

resources :characters


resources :players


resources :pools 





end
