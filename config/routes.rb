Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :pdfs
  resources :videos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#welcome'

  get '/courses', to: 'static_pages#courses'

  get "/getpdf/:url", to: 'pdfs#getpdf', as: 'getpdf'

  get "/getvideo/:url", to: 'pdfs#getvideo', as: 'getvideo'

  get "/searchpdfs", to: 'pdfs#searchpdfs', as: 'searchpdfs'

  get "/index2", to: 'pdfs#index2', as: 'index2'

  #get "/:url", to: 'posts#show'

  get "/renderpdfresults", to: 'pdfs#renderpdfresults'

  post "/renderpdfresults", to: 'pdfs#renderpdfresults'

end
