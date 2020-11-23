class BookingsController < ApplicationController
  before_action :authenticate_user!
  def new
    @bag = Bag.find(params[:bag_id])
    @booking = Booking.new
  end

  def create
    @bag = Bag.find(params[:bag_id])
    @booking = Booking.new(booking_params)
    @booking.bag = @bag
    @booking.user = current_user
    if @booking.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end


  private 

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :bag_id)
  end
end
