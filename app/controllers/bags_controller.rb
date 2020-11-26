class BagsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @bags = Bag.search_by_name_and_brand(params[:query])
      # authorize @bag
    else
      @bags = policy_scope(Bag).order(created_at: :desc)
      # authorize @bag
    end
  end

  def show
    @bag = Bag.find(params[:id])
    @owner = User.find(@bag.user_id)
    @user = current_user
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)

    @markers = [{lat: @owner.latitude, lng: @owner.longitude, infoWindow: render_to_string(partial: "info_window", locals: { user: @owner }), 
    image_url: helpers.asset_url('https://www.clipartmax.com/png/full/135-1354922_bags-woman-bag-icon-png.png')},
     {lat: @user.latitude, lng: @user.longitude,infoWindow: render_to_string(partial: "info_window", locals: { user: @user }), 
     image_url: helpers.asset_url('http://www.pngall.com/wp-content/uploads/2017/05/Map-Marker-PNG-Clipart.png')}]
    authorize @bag
  end

  def new
    @bag = Bag.new
    authorize @bag
  end

  def create
    @bag = Bag.new(bag_params)
    @bag.user = current_user
    authorize @bag

    if @bag.save
      redirect_to bags_path
    else
      render :new
    end
  end

  def edit
    @bag = Bag.find(params[:id])
    authorize @bag
  end

  def update
    @bag = Bag.find(params[:id])
    @bag.update(bag_params)
    authorize @bag

    redirect_to bag_path(@bag)
  end

  def destroy
    @bag = Bag.find(params[:id])
    @bag.destroy
    authorize @bag

    redirect_to dashboard_path
  end

  private

  def bag_params
    params.require(:bag).permit(:name, :price, :brand, :description, :image)
  end

end
