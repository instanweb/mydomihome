Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'main#main_page'

  # These routes will be for signup. The first renders a form in the browse, the second will 
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

 # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get 'admin/main_page'


  #api
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show]
    end
  end
  
end
