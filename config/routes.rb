Rails.application.routes.draw do
  resources :publications do
    collection do
      post :confirm
    end
  end
end
