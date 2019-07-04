class ListingsController < ApplicationController
  before_action :authenticate_owner!
  before_action :set_owner, only: [:show, :update, :destroy, :index]

  def index
    @items = policy_scope(Item)
    @pending_deals = Deal.where(status: 'pending')
    @current_deals = Deal.where(status: 'ongoing')
    @finished_deals = Deal.where(status: 'finished')
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
