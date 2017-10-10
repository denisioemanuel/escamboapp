class ApplicationController < ActionController::Base
  before_action :store_member_location, :if => :storable_location?

  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception

  layout :layout_by_resource

  protected

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

  private
    def storable_location?
      request.get? && !devise_controller? && !request.xhr?
    end

    def store_member_location
      store_location_for(:member, request.fullpath)
    end

end
