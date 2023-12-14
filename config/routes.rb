Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      # Additional resources will go here
    end
  end

  # Keep the health check route as it is.
  get "up" => "rails/health#show", as: :rails_health_check

  # We might also want to define at some point a root route for our app.
  # root "some_controller#some_action"
end
