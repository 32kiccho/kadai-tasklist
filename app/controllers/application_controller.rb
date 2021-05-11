class ApplicationController < ActionController::Base
    before_action :require_user_logged_in, only: [:index, :show]


    include SessionsHelper
    
    private
    
    def require_user_logged_in
        unless logged_in?
            redirect_to login_url
        end
    end
    
    def counts(user)
        @count_tasks = user.tasks.count
    end
    
    
    
end
