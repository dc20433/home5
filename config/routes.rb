Rails.application.routes.draw do
  resources :regis do
    resources :charts
    resources :patients
    resources :filings
  end
  
  get "up" => "rails/health#show", as: :rails_health_check

  
  root "regis#index"
end
