Rails.application.routes.draw do
  root 'static_pages#home'
  resources :requests
  get 'success', to: 'requests#success'
end
