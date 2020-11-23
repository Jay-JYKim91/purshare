class UsersController < ApplicationController
  def show
    @user = current_user
    @borrowed_bag = Bag.find(params[:id])
  end

  def edit
  end

  def update
  end
end
