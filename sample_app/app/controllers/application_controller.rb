class ApplicationController < ActionController::Base
  include SessionsHelper

  private
  #confirrms a logged-in user
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "please log in."
      redirect_to login_url
    end
  end 
end
