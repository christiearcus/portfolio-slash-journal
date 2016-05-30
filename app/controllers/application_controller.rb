class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def logged_in?
    !!current_admin
  end

  helper_method :logged_in?

  def current_admin
    Admin.find_by(id: session[:id])
  end

  helper_method :current_admin

end
