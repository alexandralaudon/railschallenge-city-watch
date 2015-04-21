Rails.application.routes.draw do

  resources :emergencies, only: [:create, :update]

end
