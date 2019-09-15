class User::RecommendsController < ApplicationController
    # 不妊側 infertility
    def index 
        @recommends = Recommend.where(term: 'infertility')
    end

    def new
        @recommend = Recommend.new
    end
    
    def create
        @recommend = Recommend.new(recommend_params)
        @recommend.user_id = current_user.id
        @recommend.save
        redirect_to user_infer_index_path
    end

    # 妊娠側 pregnancy
    def latest
        @recommend = Recommend.new
    end

    def complet
        @recommend = Recommend.new(recommend_params)
        @recommend.user_id = current_user.id
        @recommend.save
        redirect_to user_preg_list_path
    end

    def list
        @recommends = Recommend.where(term: 'pregnancy')
    end


    # 両方

    def show
        @recommend = Recommend.find(params[:id])
    end

    def edit
        @recommend = Recommend.find(params[:id])
  
    end

    def update
        @recommend = Recommend.find(params[:id])
        if @recommend.update(recommend_params)
            redirect_to user_recommend_path(@recommend)
        else 
            render :edit
        end            
    end
    def destroy
        @recommend = Recommend.find(params[:id])
        @recommend.destroy
        if @recommend.term == 'infertility'
            redirect_to user_infer_index_path
        else
            redirect_to user_preg_list_path
        end
    end
    
    private
    def recommend_params
      params.require(:recommend).permit(:term, :user_id, :genre, :title, :body)
    end
  
end

# if @recommend.term == 'infertility'
#     redirect_to user_infer_index_path
# else 
#     redirect_to user_preg_list_path
# end