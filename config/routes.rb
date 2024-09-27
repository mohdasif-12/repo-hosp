Rails.application.routes.draw do
  root "doctors#index"

  resources :doctors do
    resources :patients, only: [:index, :new,:create]
  end

  resources :patients
  resources :appointments
end
