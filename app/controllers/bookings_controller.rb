class BookingsController < ApplicationController
  before_action :authenticate_user!

  def new
    @bag = Bag.find(params[:bag_id])
    @booking = policy_scope(Booking).new

    @owner = User.find(@bag.user_id)
    @user = current_user
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)

    @markers = [{lat: @owner.latitude, lng: @owner.longitude, infoWindow: render_to_string(partial: "info_window", locals: { user: @owner }),
    image_url: helpers.asset_url('https://www.clipartmax.com/png/full/135-1354922_bags-woman-bag-icon-png.png')},
     {lat: @user.latitude, lng: @user.longitude,infoWindow: render_to_string(partial: "info_window", locals: { user: @user }),
     image_url: helpers.asset_url('http://www.pngall.com/wp-content/uploads/2017/05/Map-Marker-PNG-Clipart.png')}]

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

  def destroy
    @booking = Booking.find(params[:id])
    @bag = @booking.bag
    @booking.destroy
    redirect_to bag_path(@bag)
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
