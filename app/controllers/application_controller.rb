class ApplicationController < ActionController::Base
  before_action :authorized
  helper_method :logged_in?, :current_user

  def current_user
    # find_by will return nil which is falsey if the user is not found
    # or return the ruby instance which is truthy
    if session[:logged_in_teacher_id]
      @user = Teacher.find_by(id: session[:logged_in_teacher_id])
    elsif session[:logged_in_student_id]
      @user = Student.find_by(id: session[:logged_in_student_id])
    end
  end

  def logged_in?
    !!current_user #coerce the current_user into a boolean
  end

  def authorized
    unless logged_in?
      flash[:notice] = "You must be logged in to see this page"
      redirect_to login_path
    end
  end
end
