class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    # @current_user ||= User.where(id: session[:user_id]).take
    # @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def require_login
    unless current_user
      redirect_to root_url, alert: "Please log in or sign up"
    end
  end

  def logged_in?
    !current_user.nil?
  end

  helper_method :logged_in?

end
