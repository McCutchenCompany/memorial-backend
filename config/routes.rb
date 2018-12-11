Rails.application.routes.draw do

  resources :timelines
  get '/', to: 'application#status'
  get 'status', to: 'application#status'

  resources :locations do
    collection do
      get 'in_range'
    end
  end
  resources :memorials, only: [:index, :show, :create, :update] do
    member do
      post 'location'
      post 'timeline'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
