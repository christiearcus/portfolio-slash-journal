class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_admin
  Admin.find_by(id: session[:id])
end
helper_method :current_admin
# also make this a helper method for use in views

def logged_in?
  !!current_admin
end
helper_method :logged_in?

end
