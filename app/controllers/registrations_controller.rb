class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :content, :skill_1, :skill_2, :skill_3, :skill_4, :skill_5)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :content, :skill_1, :skill_2, :skill_3, :skill_4, :skill_5)
  end

  def after_update_path_for(resource)
    profile_user_path(current_user.id)
  end
end