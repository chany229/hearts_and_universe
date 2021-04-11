class ApplicationController < ActionController::Base
  private
  def check_user
    if current_user&.has_role?(:admin) || current_user&.has_role?(:guest)
    else
      redirect_to new_user_session_path
    end
  end
  def check_admin
    if current_user&.has_role?(:admin)
    else
      redirect_to chapters_path
    end
  end
end
