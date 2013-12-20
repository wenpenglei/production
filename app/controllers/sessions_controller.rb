class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if(user.present? && user.password == params[:password])
      session[:user_id] = user.id
      flash[:laobo] = "SUCCESS"
      redirect_to root_url
    else
      flash[:laobo] = "ERROR"
      redirect_to login_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url
  end
end
