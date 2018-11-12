Rails.application.routes.draw do
  get 'about', to: "pages#about", as: :about
  get 'contact_us', to: "pages#contact", as: :contact
  # get '/', to: "pages#home", as: :root
  root to: "pages#home"

  get '/restaurants', to: "restaurants#index"
  post '/restaurants', to: "restaurants#create"
  get '/restaurants/:id', to: "restaurants#show", as: :restaurant
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
