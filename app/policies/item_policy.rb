class ItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(owner: owner)
    end
  end
  def create?
    @owner
  end
  def edit?
    @record.owner == @owner
  end
  def update?
    @record.owner == @owner
  end
  def destroy?
    update?
  end

  def index?
    true
  end

  def show?
    return true
  end
end
