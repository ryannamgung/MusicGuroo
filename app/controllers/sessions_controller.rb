class SessionsController < ApplicationController

  def new

  end

  def create

    if params[:user_type] == "Teacher"
      @user = Teacher.find_by(username: params[:username])
    else
      @user = Student.find_by(username: params[:username])
    end

    byebug
    
  end

end
