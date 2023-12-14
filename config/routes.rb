Rails.application.routes.draw do
  # We could include these later when using rswag for API documentation
  # mount Rswag::Ui::Engine => '/api-docs'
  # mount Rswag::Api::Engine => '/api-docs'

  namespace :api do
    namespace :v1 do
      # Custom routes for user-specific actions
      get 'users/:user_id/reservations', to: 'reservations#user_reservations'
      get 'users/:user_id/items', to: 'reservations#user_items'

      resources :items
      resources :users
      resources :reservations
    end
  end
  # Let's keep the health check route as it is.
  get "up" => "rails/health#show", as: :rails_health_check

  # We might also want to define at some point a root route for our app.
  # root "some_controller#some_action"
end
