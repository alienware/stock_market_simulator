class CompanyPortfolioPolicy < ApplicationPolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @model = model
  end

  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    current_user.company_owner?
  end

  def edit?
    current_user.company_owner? && model.company.owners.include?(current_user)
  end

  def create?
    current_user.company_owner?
  end

  def update?
    current_user.company_owner? && model.company.owners.include?(current_user)
  end

  def destroy?
    current_user.company_owner? && model.company.owners.include?(current_user)
  end
end
