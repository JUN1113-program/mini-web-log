class ApplicationController < ActionController::Base
  def after_sign_out_path_for (resouces)
    new_user_session_path
  end
end
