Rails.application.routes.draw do
  scope ":locale", locale: /#{I18n.available_locales.join("|")}/  do
    resources :users
  end

    post 'admin/:id', to: 'users#make_admin', as: 'admin'
  root to: "users#index"
end
