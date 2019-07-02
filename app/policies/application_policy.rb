class ApplicationPolicy
  attr_reader :user, :record

  def initialize(owner, record)
    @record = record
    @owner = owner
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    attr_reader :owner, :scope

    def initialize(owner, scope)
      @owner = owner
      @scope = scope
    end

    def resolve
      scope.all
    end
  end
end
