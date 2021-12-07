class ApplicationController < ActionController::Base
  # protect_from_surgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pundit

  # # Pundit: white-list approach
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name last_name mothers_last_name cellphone_number birthday rfc drop_off_location about bb_coun_try_code neighborhood zip_code city state bb_coun_try])

    devise_parameter_sanitizer.permit(:account_update, keys: %i[name last_name mothers_last_name cellphone_number birthday rfc drop_off_location about bb_coun_try_code neighborhood zip_code city state bb_coun_try])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end


# BACK UP CODE FOR APPLICATION CONTROLLER

# class ApplicationController < ActionController::Base
#   # before_action :configure_permitted_parameters, if: :devise_controller?
#   before_action :authenticate_user!

#   include Pundit

#   # Pundit: white-list approach
#   after_action :verify_authorized, except: :index, unless: :skip_pundit?
#   after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

#   # def configure_permitted_parameters
#   #   devise_parameter_sanitizer.permit(:sign_up, keys: %i[name last_name mothers_last_name])

#   #   devise_parameter_sanitizer.permit(:account_update, keys: %i[name last_name mothers_last_name])
#   # end

#   private

#   def skip_pundit?
#     devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
#   end
# end
