class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_owner!, except: [:index, :show]

  def index
    @deals = Deal.where(status: "ongoing")
    @items_to_change = []
    @deals.each do |deal|
      @items_to_change << Item.find(deal.item_id)
    end

    @items_to_change.each do |item|
      item.list = false
      item.save
    end

    if params[:query].present?
      @items = Item.search_by_name_and_description(params[:query])
    else
      @items = Item.all
    end

    @list_items = @items.where(list: true)
  end

  def show
    @items = Item.find(params[:id])
    @deal = Deal.new
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

    if @item.update(item_params)
      redirect_to item_path(@item)
    else
      render :edit
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

  def pundit_user
    current_owner
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :price, :description, :photos)
  end

end
