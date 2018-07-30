class TeachersController < ApplicationController

  before_action :set_teacher, only: [:edit, :show, :update, :destroy]

  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to teacher_path(@teacher)
    else
      render[:new]
    end
  end

  def show
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to teacher_path(@teacher)
    else
      render[:edit]
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_path
  end

  private

  def teacher_params
    params.require(:teacher).permit(:name, :bio, :philosophy)
  end

  def set_teacher
    @teacher = Teacher.find_by(id: params[:id])
  end
end
