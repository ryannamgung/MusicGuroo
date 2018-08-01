class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]
  def new
  end

  def create

    if params[:user_type] == "Teacher"
      @user = Teacher.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:logged_in_teacher_id] = @user.id
        flash[:notice] = "Login Successful!"
        redirect_to teacher_path(@user)
      else
        flash[:notice] = "Invalid username or password"
        redirect_to login_path
      end
    else
      @user = Student.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:logged_in_student_id] = @user.id
        flash[:notice] = "Login Successful!"
        redirect_to student_path(@user)
      else
        flash[:notice] = "Invalid username or password"
        redirect_to login_path
      end
    end
  end

  def destroy
    session.delete(:logged_in_student_id) || session.delete(:logged_in_teacher_id)
    flash[:notice] = "Logout successful"
    redirect_to login_path
  end

end
