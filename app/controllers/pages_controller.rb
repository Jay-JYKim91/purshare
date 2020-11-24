class PagesController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_policy_scoped, only: [:show]

  def show
    @user = current_user
    authorize @user
    @bags_post = Bag.where(user: current_user)
    authorize @bags_post
    @bags_rent = Booking.where(user_id: current_user)
    authorize @bags_rent
  end

  def edit
  end

  def update
  end
end
