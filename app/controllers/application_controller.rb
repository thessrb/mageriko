class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  before_filter :require_user

private

  def current_user
    @current_user ||= User.limit(1).where('id = ?', session[:user_id])
  end

  def require_user
    unless current_user
      flash[:notice] = "Πρέπει να επιλέξετε πειναλέο παρακαλώ"
      redirect_to hungry_people_url
      return false
    end
  end

end
