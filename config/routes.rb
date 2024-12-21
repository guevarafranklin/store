Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token
  root "welcome#index"
  resources :products do
    resources :subscribers, only: [ :create ]
    resource :unsubscribe, only: [ :show ]
  end
end
