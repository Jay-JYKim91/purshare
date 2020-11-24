class UsersController < ApplicationController
  def show
    @user = current_user
    raise
    @bags_own = Bag.where(user: current_user)
    @bags_rent = Booking.where(customer_id: current_user)
  end

  def edit
  end

  def update
  end
end
