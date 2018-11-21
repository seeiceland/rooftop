class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    byebug
    @booking = Booking.new(booking_params)
    roof = Roof.find(params[:roof_id])
    @booking.roof = roof
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path, notice: 'Your booking was successfully created.'
    else
      render 'roofs/show', notice: 'Something went wrong. Could not book roof!'
    end
  end


  private

  def booking_params
    params.require(:booking).permit(:date, :period, :user_id)
  end
end
