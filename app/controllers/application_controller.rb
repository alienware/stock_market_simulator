class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  include ApplicationHelper

  private

  def user_not_authorized
    flash[:error] = 'Access denied.'
    redirect_to (request.referrer || '/')
  end
end
