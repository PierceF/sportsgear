class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_owner!, except: [:index, :show]

  def index
    # @items = Item.all
    @items = policy_scope(Item)
  end

  def show
    @items = Item.find(params[:id])
  end

  def new
    @item = Item.new
    # @item.save
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    @item.owner = current_owner
      authorize @item
      respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: "Item was created."}
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    authorize @item
  end

  def update
    authorize @item

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: "Item was updated."}
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    authorize @item
      @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: "Item was destroyed."}
      format.json {head :no_content}
    end
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).premit(:name, :price, :description, :photos)
  end

end
