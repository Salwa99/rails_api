Rails.application.routes.draw do
  jsonapi_resources :restaurants
  jsonapi_resources :dishes

end
