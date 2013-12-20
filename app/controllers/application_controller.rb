class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def login_required
    user = User.find_by_id(session[:user_id])
    if user.blank?
      redirect_to login_url
    end
  end

end
