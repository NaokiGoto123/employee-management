class HomeController < ApplicationController
    before_action :authenticate_user!
    before_action :set_user

    def index
        @attendances = current_user.attendances.where(date: Date.today.beginning_of_month..Date.today.end_of_month)
    end

    private

    def set_user
        @user = current_user
    end
end
