class UserPolicy < ApplicationPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @model = model
  end

  def index?
    current_user.admin?
  end

  def show?
    current_user.admin? or current_user == model
  end

  def update?
    current_user.admin?
  end

  def destroy?
    return false if current_user == model
    current_user.admin?
  end

  def rails_admin?(action)
    case action
    when :destroy, :new
      false
    else
      super
    end
  end

end
