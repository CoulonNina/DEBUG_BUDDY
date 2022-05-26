class BookingsController < ApplicationController
    #Juste New et create (avec :only)
    # before_action :set_bookings, only: [:new, :create]

  def create
    @booking = Booking.new(booking_param)
    @buddy = Buddy.find(params[:buddy_id])
    authorize @buddy
    @booking.buddy = @buddy
    @booking.user = current_user
    if @booking.save
      flash[:alert] = "Booking succes !!"
      redirect_to buddy_path(@buddy)
    else
      flash[:alert] = "Error, verify your information"
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @bookings = Booking.all
    authorize @booking
    @buddy = @booking.buddy
    authorize @buddy
  end

  private

  def booking_param
    params.require(:booking).permit(:start_date, :end_date, :buddy_id, :user_id)
  end
end
