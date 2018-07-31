class StudentsController < ApplicationController

  before_action :set_student, only: [:edit, :show, :update, :destroy]
  #before_action :require_Student_login

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render[:new]
    end
  end

  def show
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to student_path(@student)
    else
      render[:edit]
    end
  end

  def destroy
    @student.destroy
    flash[:notice] = 'Student succesfully deleted!'
    redirect_to teachers_path
  end

  private

  def student_params
    params.require(:student).permit(:name)
  end

  def set_student
    @student = Student.find_by(id: params[:id])
  end

end
