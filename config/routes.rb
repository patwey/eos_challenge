Rails.application.routes.draw do
  root 'home#index'
  namespace :api do
    namespace :v1 do
      get '/results/:str', to: 'results#create', defaults: { format: :json }
    end
  end
end
