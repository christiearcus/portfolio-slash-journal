class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(username: params[:username])
    if admin && admin.authenticate(params[:password])
      session[:user_id] = admin.id
      redirect_to root_url, notice: "Logged in as #{admin.username}"
    else
      flash.now.alert = 'Either username or password was incorrect'
      render 'new'
    end
  end

end
