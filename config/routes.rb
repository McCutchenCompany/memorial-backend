Rails.application.routes.draw do

  get '/', to: 'application#status'
  get 'status', to: 'application#status'
  
  resources :users do
    collection do
      get 'profile'
    end
  end
  resources :timelines
  resources :locations do
    collection do
      get 'in_range'
    end
  end
  resources :memorials, only: [:index, :show, :create, :update] do
    member do
      post 'location'
      post 'timeline'
      post 'image'
      delete 'remove_image'
    end
  end
  resources :public_memorials, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
