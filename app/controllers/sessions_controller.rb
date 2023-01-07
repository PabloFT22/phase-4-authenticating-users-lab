class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id #what connectsthe front end to the back end params == bridge
        render json: user
        # session[:user_id] = User.find_by(username: params[:username]).id
    end

    def destroy
        session.delete :user_id
        head :no_content
    end


end
