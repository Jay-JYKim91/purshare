class BagsController < ApplicationController
  def index
    @bags = Bag.all
  end

  def show
  end

  def new
  end

  def create
  end

  private
  def bag_params
    params.require(:bag).permit(:image)
  end
end
