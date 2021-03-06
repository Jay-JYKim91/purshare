class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  # after_action :verify_policy_scoped, except: :index, unless: :bags_controller?
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end

#   protect_from_forgery with: :exception   protect_from_forgery with: :exception
#   before_action :authenticate_user!   before_action :authenticate_user!
#   after_action :verify_authorized, :except => :index, unless: :devise_controller?
#   after_action :verify_policy_scoped, :only => :index, unless: :devise_controller?
#   rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
#   private
#   def user_not_authorized
#     flash[:alert] = "You are not authorized to perform this action."
#     redirect_to(root_path)
#   end
# end
