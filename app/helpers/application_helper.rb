module ApplicationHelper
  def signed_in?
    session[:current_email].present?
  end

  def current_user
    User.new(session[:current_email])
  end
end
