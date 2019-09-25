class Admin::SearchsController < ApplicationController
    def index 
        q = params[:q]
        @hosps    = Hosp.ransack(body_cont: q).result
        @hospreviews= HospReview.ransack(body_cont: q).result
        @recommends  = Recommend.ransack(body_cont: q).result
        @regrets = Regret.ransack(body_cont: q).result
       
        @result = @hosps + @hospreviews + @recommends +@regrets

    end
end