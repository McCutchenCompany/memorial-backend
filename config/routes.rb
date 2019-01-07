Rails.application.routes.draw do

  resources :memories
  get '/', to: 'application#status'
  get 'status', to: 'application#status'

  post '/billing/purchase', to: 'billing#purchase'
  post '/billing/generate_discount', to: 'billing#generate_discounts'
  get '/billing/available_discount', to: 'billing#available_discounts'
  
  resources :users do
    collection do
      get 'profile'
    end
  end
  resources :timelines do
    member do
      post 'file'
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
