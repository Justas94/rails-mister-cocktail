Rails.application.routes.draw do
  # get 'doses/new'
  # root to: "cocktails#index"
  root to: "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :cocktails, only: [:index, :show, :new, :create] do
      resources :doses, only: [:new, :create]
    end
    resources :doses, only: [:destroy]
end
