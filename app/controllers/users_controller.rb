class UsersController < ApplicationController
    def attendances
        @user = User.find(params[:id])
        @attendances = Attendance.where(user_id: @user.id)
    end
end
