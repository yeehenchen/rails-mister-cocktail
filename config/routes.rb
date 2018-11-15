Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create]
    collection do
      get 'filter', to: 'cocktails#filter'
    end
    member do
      get 'doses', to: 'cocktails#redirect'
    end
  end
  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
end
