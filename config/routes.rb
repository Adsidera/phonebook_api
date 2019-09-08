Rails.application.routes.draw do

  resources :users do
    resources :contacts
  end

  post 'authenticate', to: 'authentication#authenticate'
end
