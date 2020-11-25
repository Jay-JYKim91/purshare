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

  def destroy
    @booking = Booking.find(params[:id])
    @bag = @booking.bag
    @booking.destroy
    redirect_to bag_path(@abg)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :bag_id)
  end
end
