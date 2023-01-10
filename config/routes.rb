Rails.application.routes.draw do
  get 'welcome/index', to: "welcome#index"
  get "home", to: "welcome#index"
  
  resources :coins
  #this generate 7 routes for coins
  #those are the following:

#HTTP method     PATH              Controller#action          used for
  #GET          /coins                  coins#index      display a list of coins
  #GET          /coins/new              coins#new        return an HTML form to create a new coin
  #POST         /coins                  coins#create     create a new coin
  #GET          /coins/:id              coins#show       display an specific coin
  #GET          /coins/:id/edit         coins#edit       return an html for to edit a coin
  #PATCH/PUT    /coins/:id              coins#update     update a especific coin
  #DELETE       /coins/:id              coins#destroy    delete a specific photo

  root to: "welcome#index"
  #Default page now is welcome/index
 
 
 
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
