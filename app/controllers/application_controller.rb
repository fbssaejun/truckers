class ApplicationController < ActionController::Base

  def is_admin?
    current_user.role == "admin"
  end
  helper_method :is_admin?
  
  
  private
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound
    session[:user_id] = nil
  end
  helper_method :current_user
  
end
