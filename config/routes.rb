Rails.application.routes.draw do
  namespace :admin do
    resources :restaurants, only: [:index]
  end
  resources :restaurants do
    collection do                       # collection => no restaurant id in URL
      get 'top'                         # RestaurantsController#top
    end
    member do                             # member => restaurant id in URL
      get 'chef'                          # RestaurantsController#chef
    end
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :show ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end