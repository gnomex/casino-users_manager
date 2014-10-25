Rails.application.routes.draw do
  resources :marmots

  root to: "marmots#index"
end
