Rails.application.routes.draw do

  resources :memories
  get '/', to: 'application#status'
  get 'status', to: 'application#status'

  resources :response do
    collection do
      post 'support'
      post 'bug'
    end
  end

  resources :billing do
    collection do
      post 'purchase'
      post 'generate_discounts'
      get 'available_discounts'
    end
    member do
      get 'check_discount'
    end
  end
  
  resources :users do
    collection do
      get 'profile'
    end
  end
  resources :timelines do
    member do
      post 'file'
      patch 'replace_file'
      delete 'remove_file'
    end
  end
  resources :locations do
    collection do
      get 'in_range'
    end
  end
  resources :memorials, only: [:index, :show, :create, :update] do
    member do
      post 'location'
      post 'timeline'
      post 'memories'
      patch 'update_timeline'
      post 'image'
      delete 'remove_image'
      patch 'replace_image'
    end
  end
  resources :public_memorials, only: [:index, :show] do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
