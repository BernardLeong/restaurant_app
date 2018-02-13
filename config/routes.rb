Rails.application.routes.draw do
  
  # For details on the DSL available within the, see http://guides.rubyonrails.org/routing.html
  
  # resources :restaurants, only: [:index , :showis fil]
  root "restaurants#index"


  # namespace :admin do

  #   root 'restaurants#index'
  # end


end