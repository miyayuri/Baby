class Admin::HospsController < ApplicationController
    def index
        @q= Hosp.includes(:prefecture).ransack(params[:q])
        @hosps = @q.result(distinct: true)
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
