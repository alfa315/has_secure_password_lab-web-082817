class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  helper_method :logged_in?, :log_in, :log_out


  def log_in(user_id)
    session[:user_id] = user_id
  end

  def logged_in?
    !!session[:user_id]
  end

  def log_out()
    session.delete :user_id
  end

  protect_from_forgery with: :exception
end
