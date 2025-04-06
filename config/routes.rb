Rails.application.routes.draw do
  devise_for :users

  root to: "tasks#index"

  resources :tasks do
    member do
      patch :toggle_complete
    end
  end

  # get "/404", to: "errors#not_found"
  match '*unmatched', to: 'errors#not_found', via: :all

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check
end
