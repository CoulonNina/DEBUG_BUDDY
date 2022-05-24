class BookingsController < ApplicationController
    #Juste New et create (avec :only)
    before_action :set_bookings, only: [:new, :create]

    def new
      @booking = Booking.new
    end

    def create
      @booking = Booking.new
    if @booking.save
      redirect_to user_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
   end
  end
