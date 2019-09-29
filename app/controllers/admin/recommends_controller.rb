class Admin::RecommendsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @recommends = Recommend.where(term: '不妊').reverse_order
    end

    def list
        @recommends = Recommend.where(term: '妊娠').reverse_order
    end

    def summary
        @recommends = Recommend.all.reverse_order
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
