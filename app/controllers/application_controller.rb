class ApplicationController < ActionController::Base

    private

    def after_sign_in_path_for(resource)
        profile_user_path(current_user.id)
    end

    def after_sign_out_path_for(resource)
        "/"
    end

    def after_sign_up_path_for(resource)
        profile_user_path(current_user.id)
    end
end
