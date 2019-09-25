class Admin::RecommendsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @recommends = Recommend.where(term: '不妊')
    end

    def list
        @recommends = Recommend.where(term: '妊娠')
    end

    def summary
        @recommends = Recommend.all
    end
    
    def show
        @recommend = Recommend.find(params[:id])
    end
        
    def destroy
        @recommend = Recommend.find(params[:id])
        @recommend.destroy
        redirect_to admin_human_summary_path
    end
end
