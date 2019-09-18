class User::RecommendLikesController < ApplicationController
    def index
        # @recommend_likes = Recommend.where(user_id: params[:id])
        if user_signed_in?
            @recommend_likes = current_user.recommend_likes
        end
    end


    def create
        recommend = Recommend.find(params[:recommend_id])
        recommend_like = current_user.recommend_likes.new(recommend_id: recommend.id)
        recommend_like.save
        redirect_to user_recommend_path(recommend)
    end

    def destroy
        recommend = Recommend.find(params[:recommend_id])
        recommend_like = current_user.recommend_likes.find_by(recommend_id: recommend.id)
        recommend_like.destroy
        redirect_to user_recommend_path(recommend)
    end
end

