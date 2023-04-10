Rails.application.routes.draw do
  get "/albums" => "albums#index"
  get "/albums/:id" => "albums#show"
  post "/albums" => "albums#create"
  patch "/albums/:id" => "albums#update"
  delete "/albums/:id" => "albums#destroy"

  get "/artists" => "artists#index"
  get "/aritsts/:id" => "artists#show"
  post "/artists" => "artists#create"
  patch "/artists/:id" => "artists#update"
  delete "/artists/:id" => "artists#destroy"

  get "/tracks" => "tracks#index"
  get "/tracks/:id" => "tracks#show"
  post "/tracks" => "tracks#create"
  patch "/tracks/:id" => "tracks#update"
  delete "/tracks/:id" => "tracks#destroy"
end
