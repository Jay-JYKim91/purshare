class BagsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bags = policy_scope(Bag).order(created_at: :desc)
  end

  def show
    @bag = Bag.find(params[:id])
    @users = User.find(@bag.user_id)
    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    
    @markers = [{lat: @users.latitude, lng: @users.longitude}]

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
