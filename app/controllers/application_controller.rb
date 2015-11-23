class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:user_id] && session[:type]=="User"
      @current_user ||= User.find(session[:user_id])
    end
  end

  def require_valid_user
    if session[:user_id] == nil
      redirect_to login_path
    end
  end
  def require_valid_user
    if session[:admin_id] == nil
      redirect_to login_path
    end
  end
end
