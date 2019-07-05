class ListingsController < ApplicationController
  before_action :authenticate_owner!
  # before_action :set_owner, only: [:show, :update, :destroy, :index]

  def index
    Deal.ongoing
    @items = policy_scope(Item)
    @pending_deals = current_owner.deals.where(status: 'pending')
    @current_deals = current_owner.deals.where(status: 'ongoing')
    @finished_deals = current_owner.deals.where(status: 'finished')
  end

  def accept
   @deal = Deal.find(params[:id])
   @deal.set
   @deal.save!
  end

  def reject
   @deal = Deal.find(params[:id])
   @deal.status = "rejected"
   @deal.list = true
   @deal.save!
  end

  private

  def set_owner
    @owner = Owner.find(params[:id])
  end

  def pundit_user
    current_owner
  end
end
# first add migration to edit status to string
# in list controller#index put @deals = deals.where status == "pending"
#
