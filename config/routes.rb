Rails.application.routes.draw do
  resources :dogtests
  resources :dogbreeds do 
    resources :image_elements
  end
  get "search", to: "dogbreeds#search"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
