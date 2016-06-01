module SessionsHelper
  
  def logged_in?
    !!current_admin
  end

  def current_admin
    Admin.find_by(id: session[:id])
  end

end
