Rails.application.routes.draw do

  resources :merchants do
    resources :orders
  end

  root to: "merchants#index"
end
