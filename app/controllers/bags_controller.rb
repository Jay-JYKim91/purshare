class BagsController < ApplicationController
  def index
  end

  def show
    @bag = Bag.find(params[:id])
  end

  def new
  end

  def create
  end
end
