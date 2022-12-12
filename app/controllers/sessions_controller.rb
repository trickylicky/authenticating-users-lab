class SessionsController < ApplicationController

    def create
        # find the user
        # save their id to the session userid
        # render user
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id
        render json: user

    end

    # why are we doing .delete instead of .destroy??
    def destroy
        session.delete :user_id
        head :no_content
    end
end