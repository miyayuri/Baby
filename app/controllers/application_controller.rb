class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [
      :name,
      :tel,
      :nickname,
      ]
    )
  end



  private
    def after_sign_in_path_for(resourse)
      case resourse
      when User
        root_path
      when Admin
        admin_searchs_path
      end
    end
end
