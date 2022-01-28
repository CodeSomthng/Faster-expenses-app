class RegistrationsController < Devise::RegistrationsController
  # layout 'login'
  # skip_before_action :require_no_authentication
  # before_action :resource_name
  #
  # def resource_name
  #   :user
  # end
  #
  # def new
  #   @user = User.new
  # end
  #
  # def create
  #   byebug
  #   @user = User.new(params[:user])
  #   # @user = User.new(sign_up_params)
  #   # another stuff here
  # end

  private

  def sign_up_params
    params.require(:user).permit(:login, :password)
  end
end
