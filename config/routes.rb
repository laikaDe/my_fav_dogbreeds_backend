Rails.application.routes.draw do
  resources :dogbreeds
  get "dogbreeds/search?q=", to: "dogbreeds#search"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
