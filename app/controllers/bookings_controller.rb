class BookingsController < ApplicationController

  before_action :set_booking, only: [:edit, :show, :update, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    byebug
    #associate this booking with the booking
    #only student should be able to leave a booking
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
    redirect_to teachers_path
  end

  private

  def booking_params
    params.require(:booking).permit(:lesson_id, :student_id, :time, :cost)
  end
  #
  def set_booking
    @booking = Booking.find_by(id: params[:id])
  end
end
