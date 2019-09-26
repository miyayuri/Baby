class User::HospsController < ApplicationController
    def new
        @hosp = Hosp.new
    end

    def index
        @q= Hosp.includes(:prefecture).ransack(params[:q])
        @hosps = @q.result(distinct: true)
    end
    
    def show
        @hosp = Hosp.find(params[:id])
        @hosp_review = HospReview.new
    end

    def edit
        @hosp = Hosp.find(params[:id])
        if @hosp.user.id != current_user.id
           redirect_to user_hosp_path(@hosp.id)
        end
    end

    def create
        @hosp = Hosp.new(hosp_params)
        @hosp.user_id = current_user.id
        if  @hosp.save
            flash[:success] = " 投稿しました！"
            redirect_to user_hosps_path
        else
            render :new
        end
    end

    def update
        @hosp = Hosp.find(params[:id])
        if  @hosp.update(hosp_params)
            flash[:success] = " 投稿しました！"
            redirect_to user_hosp_path(@hosp.id)
        else
            render :edit
        end     
    end

    def destroy
        @hosp = Hosp.find(params[:id])
        @hosp.destroy
        redirect_to user_hosps_path
    end

    private
    def hosp_params
        params.require(:hosp).permit(:name, :user_id, :prefecture_id, :body)
    end  
end