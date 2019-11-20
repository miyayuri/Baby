class Admin::RegretsController < ApplicationController
    before_action :authenticate_admin!
    def index
        @regrets = Regret.all.reverse_order
    end
end
