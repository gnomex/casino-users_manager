Rails.application.routes.draw do
  resources :users

  controller :application do
    get "/locale" => "application#locale"
  end

  root to: "users#index"
end
