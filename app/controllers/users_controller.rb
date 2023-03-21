class UsersController < ApplicationController
    def show
        users = User.find_by(id: params[:id])
        if users
          render json: users
        else
          render json: { error: "Validation errors" }, status: :not_found
        end
    end
end
