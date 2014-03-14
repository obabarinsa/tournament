TournamentApp::Application.routes.draw do
 
  # resources :posts


root "events#home" 

 
resources :users
resources :sessions
resources :registrations
resources :games

 post '/login' => 'users#login'

get "/logout" => "sessions#destroy", as: 'logout'

resources :events

resources :tournaments

resources :characters


resources :players


resources :pools 

resources :posts do
    resources :comments, :only => [:create]
  end

  # root :to => 'welcome#index'







end
