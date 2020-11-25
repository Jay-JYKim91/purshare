class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @bag = Bag.find(params[:bag_id])
    @booking = policy_scope(Booking).new
    authorize @booking
    authorize @bag
  end

  def create
    @bag = Bag.find(params[:bag_id])
    @booking = Booking.new(booking_params)
    @booking.bag = @bag
    @booking.user = current_user
    authorize @booking
    authorize @bag

    if @booking.save
      redirect_to dashboard_path(current_user.id)
    else
      render :new
    end
  end

  def approve
    @booking = Booking.find(params[:booking_id])
    @bag = @booking.bag
    @bag.available = false
    @booking.approved = true
    @booking.save
    @bag.save
    redirect_to dashboard_path(current_user.id)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :bag_id)
  end
end
