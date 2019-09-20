class Admin::RegretsController < ApplicationController
    def index
        @regrets = Regret.all
    end
end
