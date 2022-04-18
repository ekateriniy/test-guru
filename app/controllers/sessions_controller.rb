class SessionsController < Devise::SessionsController

  def create
    super

    flash[:notice] = "Привет, #{current_user.first_name}!" unless current_user.is_a?(Admin)
  end
end
