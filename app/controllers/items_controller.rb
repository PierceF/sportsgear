class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
    @items = Item.find(params[:id])
  end

  def new
    @item = Item.new
    @item.save
  end

  def create
    @item = Item.new(item_params)
      if @item.save
        redirect_to item_path(@item)
      else
        render :new
    end
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to_item_path(@item)
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).premit(:name, :price, :description, :photos)
  end

end
