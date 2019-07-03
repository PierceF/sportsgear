class DealsController < ApplicationController

  def index
    @deals = Deal.all
  end

  def new
    @item = Item.find(params[:id])
    authorize @deal
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(deal_params)
    @deal.user = current_user
    @deal.item = Item.find(params[:item_id])
    @deal.start_date = Date.today
    @deal.status = "pending"
    authorize @deal
    @deal.save
    redirect_to root_path
  end

  private

  def deal_params
    params.require(:deal).permit(:duration)
  end

  def set_deal
    @deal = Deal.find(params[:id])
  end
end
