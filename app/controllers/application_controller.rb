class ApplicationController < ActionController::Base

  before_action :authorized_teacher
  before_action :authorized_student

  # before_action :authorized
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

  def authorized_student
    unless logged_in? && session[:logged_in_student_id]
      flash[:notice] = "You must be logged in as a student to see this page"
      redirect_to login_path
    end
  end

  def authorized_teacher
    unless logged_in? && session[:logged_in_teacher_id]
      flash[:notice] = "You must be logged in as a teacher to see this page"
      redirect_to login_path
    end
  end

end
