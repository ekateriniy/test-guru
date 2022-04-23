class ApplicationController < ActionController::Base
  before_action :set_locale

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def default_url_options
    I18n.locale != I18n.default_locale ? { lang: I18n.locale } : {}
  end

  private

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end

  def after_sign_in_path_for(resource)
    if current_user.is_a?(Admin)
      admin_tests_path
    else
      stored_location_for(resource) || root_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end
end
