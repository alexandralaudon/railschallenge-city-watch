Rails.application.routes.draw do

  namespace :api do
    resources :emergencies, :responders
  end

end
