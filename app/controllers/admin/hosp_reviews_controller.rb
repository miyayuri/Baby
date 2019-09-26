class Admin::HospReviewsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @reviews = HospReview.all

    end

	def destroy
		hosp_review = HospReview.find(params[:id])
        if  hosp_review.destroy
            flash[:success] = "コメントを削除しました！！！"
            redirect_back(fallback_location: root_url)
        end
	end
end
