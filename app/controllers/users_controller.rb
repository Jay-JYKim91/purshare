class UsersController < ApplicationController
  before_action :authenticate_user!

  after_action :verify_policy_scoped, only: [:show]

  def show
    @user = current_user
    authorize @user
    # @borrowed_bag = Bag.find(params[:id])
  end

  def edit
  end

  def update
  end
end
