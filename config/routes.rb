# == Route Map
#

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :surveys
  root "surveys#index"

  namespace :api do
    namespace :v1 do
      resources :surveys do
        resources :questions do
          resources :answers
        end
      end
    end
  end
end
