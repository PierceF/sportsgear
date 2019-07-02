Rails.application.routes.draw do

  resources :listings, only: :index

  devise_for :users
  #   devise_scope :user do
  #   authenticated :user do
  #     root 'items#index', as: :authenticated_root
  #   end

  #   unauthenticated do
  #     root 'devise/sessions#new', as: :unauthenticated_root
  #   end
  # end

  root 'items#index'



  devise_for :owners
  # devise_scope :owner do
  # authenticated :owner do
  #   root 'owners#show', as: :authenticated_root
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # browse all items
  # /items => items#index(owner_id=nil)

  # POST /items => items#create
  resources :items, only: [:index, :show, :create, :destroy]

  # view an item
  # /items/42 => items#show

  # browse all items of an owner
  # /owners/1/items => items#index(owner_id=1)
  resources :owners do
    resources :items, only: :index
  end




end
