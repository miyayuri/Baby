class User::HospLikesController < ApplicationController
    def create
        hosp = Hosp.find(params[:hosp_id])
        hosp_like = current_user.hosp_likes.new(hosp_id: hosp.id)
        hosp_like.save
        redirect_to user_hosp_path(hosp)
    end

    def destroy
        hosp = Hosp.find(params[:hosp_id])
        hosp_like = current_user.hosp_likes.find_by(hosp_id: hosp.id)
        hosp_like.destroy
        redirect_to user_hosp_path(hosp)
    end
end
