Rails.application.routes.draw do

  resources :twitters do
    collection do
      get :top
    end
  end
end
