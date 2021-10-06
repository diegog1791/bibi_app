class ProductPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
      # scope.where(user: user) this line is how I can get only the products I created
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end
end
