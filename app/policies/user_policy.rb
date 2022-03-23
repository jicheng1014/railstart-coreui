# frozen_string_literal: true

class UserPolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
  end

  def update?
    true
  end

  def destroy?
  end

  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all
    end
  end
end
