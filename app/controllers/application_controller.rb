class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_user!
    redirect_to login_path unless current_user
  end

  def current_user
    @current_user ||=
      begin
        return nil unless session[:manager_id]

        Manager.find(session[:manager_id])
      end
  end
end
