class User::HospsController < ApplicationController

    def new
        @hosp = Hosp.new
    end

    def index
        @hosp = Hosp.all
    end
    
    def show
        @hosp = Hosp.find(params[:id])
    end

    def edit
        @hosp = Hosp.find(params[:id])
    end

    def create
        @hosp = Hosp.new(hosp_params)
        @hosp.user_id = current_user.id
        @hosp.save
        redirect_to user_hosps_path
    end

    def update
        @hosp = Hosp.find(params[:id])
        if @hosp.update(hosp_params)
            redirect_to user_hosps_path(@hosp.id)
        else render :edit
        end            
    end

    def destroy
        @hosp = Hosp.find(params[:id])
        @hosp.destroy
        redirect_to user_hosps_path
    end

    def hosp_params
        params.require(:hosp).permit(:name, :user_id, :prefecture_id, :body)
      end
    
     
end
