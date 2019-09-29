class Admin::HospsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @q= Hosp.includes(:prefecture).ransack(params[:q])
        @hosps = @q.result(distinct: true).reverse_order
    end
    def show
        @hosp = Hosp.find(params[:id])
    end

    def destroy
        @hosp = Hosp.find(params[:id])
        @hosp.destroy
        redirect_to admin_hosps_path
    end
end
