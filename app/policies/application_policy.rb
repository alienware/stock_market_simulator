class ApplicationPolicy
  attr_reader :current_user, :record

  def initialize(current_user, record)
    @current_user = current_user
    @record = record
  end

  def index?
    false
  end

  def show?
    scope.where(:id => record.id).exists?
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

  def scope
    Pundit.policy_scope!(current_user, record.class)
  end

  class Scope
    attr_reader :current_user, :scope

    def initialize(current_user, scope)
      @current_user = current_user
      @scope = scope
    end

    def resolve
      scope
    end
  end

  def rails_admin?(action)
    case action
    when :dashboard
      current_user.admin?
    when :index
      current_user.admin?
    when :show
      current_user.admin?
    when :new
      current_user.admin?
    when :edit
      current_user.admin?
    when :destroy
      current_user.admin?
    when :export
      current_user.admin?
    when :history
      current_user.admin?
    when :show_in_app
      current_user.admin?
    else
      raise ::Pundit::NotDefinedError, "unable to find policy #{action} for #{record}."
    end
  end

  # Hash of initial attributes for :new, :create and :update actions. This is optional
  def attributes_for(action)
  end
end

