class UsersController < ApplicationController
  before_action :authenticate_user!

  after_action :verify_policy_scoped, except: [:show, :edit, :update]
  skip_before_action :authenticate_user!, only: [:show, :edit, :update]

  def show
    @user = current_user
    @bags_post = Bag.where(user: current_user)
    @bags_rent = Booking.where(user_id: current_user)
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    @user.update(user_params)

    redirect_to dashboard_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :address)
  end
end
