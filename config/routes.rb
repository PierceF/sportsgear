Rails.application.routes.draw do

  get 'profiles/index'
  get 'profiles/show'
  get 'profiles/edit'
  get 'profiles/update'
  get 'profiles/show'
  resources :listings, only: :index
  resources :deals, only: :index

  post '/accept/:id', to: 'listings#accept', as: 'accept'
  post '/reject/:id', to: 'listings#reject', as: 'reject'

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
# def root
#   if owner_signed_in?
#     redirect_to 'listings#index'
#   else
#     redirect_to 'items#index'
#   end
# end
#   devise_scope :owner do
#   authenticated :owner do
#     root 'listings#index', as: :authenticated_root
#   end
#     unauthenticated do
#     root to: , as: :unauthenticated_root
#   end
# end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # browse all items
  # /items => items#index(owner_id=nil)

  # POST /items => items#create
  resources :items, only: [:index, :show, :create, :destroy, :new, :edit, :update] do
    resources :deals, only: [:create, :index, :show, :new]
  end


  # view an item
  # /items/42 => items#show

  # browse all items of an owner
  # /owners/1/items => items#index(owner_id=1)
  resources :owners do
    resources :items, only: :index
  end




end
