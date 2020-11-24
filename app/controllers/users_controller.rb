class UsersController < ApplicationController
  def show
    @user = current_user
    @bags_post = Bag.where(user: current_user)
    @bags_rent = Booking.where(user_id: current_user)
  end

  def edit
  end

  def update
  end
end
