class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  # def new?
  # end

  def create?
    true
  end

  def show?
    true
  end

  # def edit?
  #   user == record.user
  # end

  def update?
    # record.user == user || user.admin
    true
  end

  def destroy?
    # user == record.user || user.admin
    true
  end
end
