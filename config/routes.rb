Rails.application.routes.draw do

  get '/', to: 'application#status'
  get 'status', to: 'application#status'
  get 'find_places', to: 'application#find_places'
  get 'photos/:memorial_id', to: 'photos#next_index'
  resources :memories
  
  resources :roles
  resources :photos
  
  resources :organizations do
    member do
      get 'memorials'
      get 'members'
      post 'memorial'
      post 'image'
      patch 'replace_image'
      delete 'remove_image'
    end
  end

  resources :user_memorials do
    collection do
      post 'join_memorial'
    end
  end
  
  resources :user_organizations do
    collection do
      post 'join_org'
    end
  end

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
      post 'create_customer'
      post 'unlock'
      put 'update_customer'
      delete 'delete_card'
    end
  end
  
  resources :users do
    collection do
      get 'profile'
      post 'memorial'
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
      post 'photo'
      get 'photos'
      patch 'approve_photo/:photo_id', to: 'memorials#approve_photo'
      patch 'update_timeline'
      post 'image'
      delete 'remove_image'
      patch 'replace_image'
    end
  end
  resources :public_memorials, only: [:index, :show] do
    collection do
      get 'search'
      get 'popular'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
