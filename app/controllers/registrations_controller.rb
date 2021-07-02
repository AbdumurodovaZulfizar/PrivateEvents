# rubocop:disable Layout/EndOfLine
class RegistrationsController < Devise::RegistrationsController
  private

  def index
    @user = User.all
  end

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end
# rubocop:enable Layout/EndOfLine
