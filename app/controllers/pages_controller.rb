class PagesController < ApplicationController
  before_action :authenticate_user!
  # after_action :verify_policy_scoped, only: [:show]

  def show
    @user = current_user
    # authorize @user
  end

  def edit
  end

  def update
  end
end
