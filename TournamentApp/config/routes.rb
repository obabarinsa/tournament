TournamentApp::Application.routes.draw do
 
root "events#home" 
post '/login' => 'users#login'

get "/logout" => "sessions#destroy", as: 'logout'
resources :events

resources :tournaments

resources :characters


resources :players


resources :pools 

resources :users
resources :sessions



end
