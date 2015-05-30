Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      resources :services
      
      scope '(:category)' do
        resources :adds
      end

    end
  end

  # All other requests redirect to angular initialize view.
  root :to => "layouts#index"
  get "*path" => "layouts#index"

end
