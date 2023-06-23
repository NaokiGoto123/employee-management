class UsersController < ApplicationController
    def attendances
        @user = User.find(params[:id])
        @attendances = Attendance.where(params[:id])
    end
end
