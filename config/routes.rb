Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "url#index"

  get '/url', to 'url#short_to_long'
  post '/url', to 'url#long_to_short'
end
