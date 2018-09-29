Rails.application.routes.draw do
  # ネストまだしてないです
  root 'tops#top'
  get '/user_products/:id' => 'user_products#index', as: 'user_products'

  resources :cart_items, only: [:create, :index, :destroy, :update, :show] do
    member do
      get :test
    end
  end

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

 

  resources :users, only: [:create, :show, :edit, :update, :destroy]
  # resources :comments, only: [:create, :destroy]

  resources :purchases, only: [:create, :index, :new]
  resources :favorites, only: [:create, :index, :destroy]
  resources :shipping_addresses, only: [:create, :destroy, :index] do
    member do
      post :add_address
    end
  end
  resources :events, only: [:create, :show, :index]
  resources :song_orders, only: [:create, :update]
  resources :genres, only: [:create, :index, :edit, :update]

  resources :disks, only: [:create, :update, :new]
  resources :songs, only: [:create, :index, :edit, :update]
  resources :user_products, only: [:index, :show]
  resources :admin_users, only: [:index, :show, :destroy]
  resources :admin_purchases, only: [:index, :show]
  get 'admins/top'
  resources :products, only: [:create, :index, :update, :new, :edit, :destroy] do
   resources :comments, only: [:create, :destroy]
end




  # get 'admin_users/index'
  # get 'admin_users/show'
  # get 'admin_songs_order/create'
  # get 'admin_songs_order/update'
  # get 'admin_genres/index'
  # get 'admin_genres/create'
  # get 'admin_genres/update'
  # get 'admin_genres/edit'
  # get 'admin_disks/create'
  # get 'admin_disks/update'
  # get 'admin_products/new'
  # get 'admin_products/create'
  # get 'admin_products/update'
  # get 'admin_products/index'
  # get 'admin_products/edit'
  # get 'admin_songs/create'
  # get 'admin_songs/update'
  # get 'admins/login'

  # get 'admin_purchases/index'
  # get 'admin_purchases/show'
  # get 'tops/top'
  get 'events/index'
  # get 'events/show'
  # get 'events/create'
  # get 'products/index'
  # get 'products/show'
  # get 'shipping_addresses/index'
  # get 'shipping_addresses/create'
  # get 'shipping_addresses/destroy'
  # get 'cart_items/index'
  # get 'cart_items/show'
  # get 'cart_items/create' => 'cat_items#create', as: "test"
  # get 'cart_items/update'
  # get 'cart_items/destroy'
  # get 'favorites/index'
  # get 'favorites/create'
  # get 'favorites/destroy'
  # get 'purchases/index'
  # get 'purchases/new'
  # get 'purchases/create'
  # get 'comments/create'
  # get 'comments/destroy'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    # get 'songs/new'
  # get 'products/new'
  # get 'products/index'
  # get 'products/edit'
  # get 'genres/index'
  # get 'genres/edit'
  # get 'user_products/index'
  # get 'user_products/show'
end
