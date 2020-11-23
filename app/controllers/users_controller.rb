class UsersController < ApplicationController
  def show
    @user = User.find([:id])
  end

  def edit
  end

  def update
  end
end
