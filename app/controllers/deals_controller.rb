class DealsController < ApplicationController
  def new
    @item = Item.find(params[:id])
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(deal_params)
    @deal.user = User.find(params[:user_id])
    @deal.item = Item.find(params[:item][:item_id])
    @deal.status = "pending"
    @deal.start_date = Date.today
    @deal.save
    redirect_to listings_path
  end

  private

  def deal_params
    params.require(:deal).permit(:duration)
  end
end
