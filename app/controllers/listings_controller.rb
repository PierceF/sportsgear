class ListingsController < ApplicationController
  before_action :authenticate_owner!
  def index
    @items = policy_scope(Item)
  end

  private

  def pundit_user
    current_owner
  end
end
