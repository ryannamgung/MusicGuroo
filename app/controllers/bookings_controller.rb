class BookingsController < ApplicationController

  before_action :set_booking, only: [:edit, :show, :update, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render[:new]
    end
  end

  def show
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render[:edit]
    end
  end

  def destroy
    @booking.destroy
    flash[:notice] = 'Booking succesfully deleted!'
    if session[:logged_in_teacher_id]
      redirect_to teacher_path(current_user)
    else
      redirect_to student_path(current_user)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:lesson_id, :student_id, :time)
  end

  def set_booking
    @booking = Booking.find_by(id: params[:id])
  end
end
