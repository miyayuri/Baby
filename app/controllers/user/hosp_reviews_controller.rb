class User::HospReviewsController < ApplicationController
	before_action :authenticate_user!
    def create
		hosp = Hosp.find(params[:hosp_id])
		hosp_review = current_user.hosp_reviews.new(hosp_review_params)
		hosp_review.hosp_id = hosp.id
		if hosp_review.save
		   flash[:success] = "コメントを投稿しました！"
           redirect_back(fallback_location: root_url)
        else
			flash[:success] = "コメントの投稿に失敗しました！"
			redirect_back(fallback_location: root_url)
        end
	end

	def destroy
		hosp_review = HospReview.find(params[:id])
	if  hosp_review.destroy
		flash[:success] = "コメントを削除しました！！！"
        redirect_back(fallback_location: root_url)
    else
        redirect_back(fallback_location: root_url)
    end
	end

	def edit
		@hosp_review = HospReview.find(params[:id])
		@hosp = Hosp.find(params[:hosp_id])
		if @hosp_review.user.id != current_user.id
			redirect_to user_hosp_path(@hosp)
		end
	end

	def update
		@hosp = Hosp.find(params[:hosp_id])    
		@hosp_review = HospReview.find(params[:id])
		if @hosp_review.update(hosp_review_params)
			flash[:success] = "レビューを編集しました！"
			redirect_to user_hosp_path(@hosp)
		 else
			@hosp = Hosp.find(params[:hosp_id])	
			render :edit
		 end
	end

    private
	def hosp_review_params
		params.require(:hosp_review).permit(:hosp_id, :user_id, :body )
	end
end
