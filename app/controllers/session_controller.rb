class SessionController < ApplicationController
  def new
  end

  def create 
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
      user.update_attribute(:last_active, Time.now)
    else
      flash[:notice] = "Information Invalid."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
