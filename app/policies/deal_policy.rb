class DealPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end


  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def save?
    true
  end
end