Rails.application.routes.draw do
  resources :books do
    resources :users
  end
  resources :users do
    resources  :books
  end
end
