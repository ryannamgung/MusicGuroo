class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new
    @teacher = Teacher.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def teacher_params
    Teacher.find_by(id: params[:id])
  end

  def set_teacher
    params.require(:teacher).permit(:name, :bio)
  end
end
