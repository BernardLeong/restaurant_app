Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within the, see http://guides.rubyonrails.org/routing.html
  
  root "restaurants#index"

  namespace :admin do
    root "restaurants#index"
  end

end