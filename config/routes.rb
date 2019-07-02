Rails.application.routes.draw do

  devise_for :users
  devise_for :owners
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
