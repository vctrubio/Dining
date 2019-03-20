class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user.chef == true
  end

  def update?
    user.chef == true && record.user == user
  end

  def destroy?
    user.chef == true && record.user == user
  end
end

