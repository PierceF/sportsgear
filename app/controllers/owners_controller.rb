class OwnersController < ApplicationController
  before_action :authenticate_owner!

  def show
    @owner = current_owner
    @items = policy_scope(Item)
    @pending_deals = current_owner.deals.where(status: 'pending')
    @current_deals = current_owner.deals.where(status: 'ongoing')
    @finished_deals = current_owner.deals.where(status: 'finished')
  end
end
