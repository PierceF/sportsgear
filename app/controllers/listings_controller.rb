class ListingsController < ApplicationController
  before_action :authenticate_owner!
  def index
    @items = policy_scope(Item)
    @deals = Deal.where(status: 'pending')
  end

  private

  def pundit_user
    current_owner
  end
end
# first add migration to edit status to string
# in list controller#index put @deals = deals.where status == "pending"
#
