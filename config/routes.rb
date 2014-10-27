Rails.application.routes.draw do
  # controller :application do
  #   get "/locale" => "application#locale"
  # end

  scope "(:locale)", :locale => /en|pt-BR/ do
    root to: "users#index"

    resources :users, only: [:index, :new, :create, :destroy]
  end
end
