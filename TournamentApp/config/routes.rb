TournamentApp::Application.routes.draw do
 
root "events#home" 

 
resources :users
resources :sessions
resources :registrations
resources :games

# post '/login' => 'users#login'

get "/logout" => "sessions#destroy", as: 'logout'

resources :events

resources :tournaments

resources :characters


resources :players


resources :pools 







end
