Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :talk do
        get :speak
      end
    end
  end
end
