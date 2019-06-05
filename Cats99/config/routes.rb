Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cats do
    resource :cat_rental_requests, only: [:new, :create]
  end
end
