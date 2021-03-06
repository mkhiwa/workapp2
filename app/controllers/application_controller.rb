class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

         protected

              def configure_permitted_parameters
                   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:full_name, :nid, :company, :mobile_no, :location, :email, :password)}

                   devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:full_name, :company, :nid, :mobile_no, :location, :email, :password, :current_password)}
              end

    end
