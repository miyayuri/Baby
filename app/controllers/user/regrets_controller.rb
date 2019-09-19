class User::RegretsController < ApplicationController
    def index
        @regret = Regret.new
        @regrets = Regret.all
    end
    
    def create
        @regret = Regret.new(regret_params)
        @regret.user_id = current_user.id
        if  @regret.save
            flash[:success] = " 投稿しました！"
            redirect_back(fallback_location: root_url)
        else
            render :index
        end
    end

    def destroy
        @regret = Regret.find(params[:id])
        if  @regret.destroy
            flash[:success] = "削除しました！！！"
            redirect_back(fallback_location: root_url)
        else
            redirect_back(fallback_location: root_url)
        end
    end

    private
    def regret_params
    params.require(:regret).permit(:user_id, :period_id, :body )
    end
end
