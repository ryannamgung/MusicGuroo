class TeachersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  # before_action :set_teacher, only: [:edit, :show, :update, :destroy]
  #before_action :require_teacher_login
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      session[:logged_in_teacher_id] = @teacher.id
      redirect_to teacher_path(@teacher)
    else
      render :new
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def edit
  end

  def update
    if current_user.update(teacher_params)
      redirect_to teacher_path(current_user)
    else
      render[:edit]
    end
  end

  def destroy
    current_user.destroy
    redirect_to teachers_path
  end

  private

  def teacher_params
    params.require(:teacher).permit(:username, :password, :name, :bio, :philosophy)
  end

  # def set_teacher
  #   @teacher = Teacher.find_by(id: params[:id])
  # end
end
