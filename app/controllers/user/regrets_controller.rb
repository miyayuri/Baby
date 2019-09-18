class User::RegretsController < ApplicationController

    def index
        @regret = Regret.new
        @regrets = Regret.all
    end
    
    def create
        @regret = Regret.new(regret_params)
        @regret.user_id = current_user.id
        @regret.save
        redirect_back(fallback_location: root_url)
    end

    def destroy
    end

    private
    def regret_params
    params.require(:regret).permit(:user_id, :period_id, :body )
    end
end
