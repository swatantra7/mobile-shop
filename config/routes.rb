Rails.application.routes.draw do

  devise_for :users
  resources :users

  root 'users#index'

  resources :topics
  resources :mobiles
  resource :carts, only: :show do
    put 'add/:mobile_id', to: 'carts#add', as: :add_to
    put 'remove/:mobile_id', to: 'carts#remove', as: :remove_from
  end

  get 'pages/home' => 'high_voltage/pages#show', id: 'home'

  devise_scope :user do
    post '/user/registrations', to: 'users#create', as: :create_user
  end

end
