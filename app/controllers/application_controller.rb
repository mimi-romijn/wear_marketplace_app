class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do |exception|
        respond_to do |format| 
            format.html {
                # render file: "#{Rails.root}/public/401", altert: exception.message
                redirect_to root_path, alert: exception.message
            }
        end
    end
end
