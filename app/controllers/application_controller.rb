class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_hungry_person
  before_filter :require_hungry_person

private

  def current_hungry_person
    @current_hungry_person ||= HungryPerson.limit(1).where('id = ?', session[:hungry_person_id])
  end

  def require_hungry_person
    unless current_user
      flash[:notice] = "Πρέπει να επιλέξετε πειναλέο παρακαλώ"
      redirect_to hungry_people_url
      return false
    end
  end

end
