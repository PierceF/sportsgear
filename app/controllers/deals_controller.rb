class DealsController < ApplicationController
  before_action :authenticate_user!

  def index
    @deals = current_user.deals
    # @deals = policy_scope(Deal)
    # skip policy scope
    skip_policy_scope
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
