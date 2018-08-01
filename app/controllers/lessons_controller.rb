class LessonsController < ApplicationController
  before_action :set_teacher, only: [:index_teacher_lessons]
  before_action :set_lesson, only: [:show, :edit, :update]
  def index #all lessons for that particular teacher
    @lessons = Lesson.all
  end

  def index_teacher_lessons #add more stuff to the view
    @lessons = @teacher.lessons
  end

  def show
    @booking = Booking.new
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson)
    else
      render :edit
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:difficulty, :genre, :teacher_id, :instrument_id)
  end

  def set_lesson
    @lesson = Lesson.find_by(id: params[:id])
  end

  def set_teacher
    @teacher = Teacher.find_by(id: params[:teacher_id])
  end
end
