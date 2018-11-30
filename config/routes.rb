Rails.application.routes.draw do
  resources :locations do
    collection do
      get 'in_range'
    end
  end
  resources :memorials, only: [:index, :show, :create, :update] do
    member do
      post 'location'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
