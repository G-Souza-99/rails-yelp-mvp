Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: %w[edit update destroy] do
    resources :reviews, only: %w[new create]
  end

  root 'restaurants#index'

end
