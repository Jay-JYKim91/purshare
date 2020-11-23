class BagsController < ApplicationController
  def index
    @bags = Bag.all
  end

  def show
    @bag = Bag.find(params[:id])
  end

  def new
    @bag = Bag.new
  end

  def create
    @bag = Bag.new(bag_params)
    @bag.user = current_user
    if @bag.save
      redirect_to bags_path
    else
      render :new
    end
  end

  private

  def bag_params
    params.require(:bag).permit(:name, :price, :brand, :description, :image, :user_id)
  end
  
end
