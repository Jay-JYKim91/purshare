class PagesController < ApplicationController
  def show
    @user = current_user
    # @borrowed_bag = Bag.find(params[:id])
  end
end
