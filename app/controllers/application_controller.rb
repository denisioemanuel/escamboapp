class ApplicationController < ActionController::Base
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception

  layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller? && resource_name == :admin
      "backoffice_device"
    elsif devise_controller? && resource_name == :member
      "site_device"
    else
      "application"
    end
  end

  def user_not_authorized
    flash[:alert] = "Você não tem autorização para executar essa ação."
    redirect_to(request.referrer || root_path)
  end

end
