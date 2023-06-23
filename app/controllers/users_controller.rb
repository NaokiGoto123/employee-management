class UsersController < ApplicationController
    def attendances
        @user = User.find(params[:id])
    end
end
