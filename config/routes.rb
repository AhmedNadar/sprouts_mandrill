Rails.application.routes.draw do\

  root to: "home#index"
  resources :posts do
    resources :comments
  end
  devise_for :users, controllers: { registrations: "registrations" }
end
