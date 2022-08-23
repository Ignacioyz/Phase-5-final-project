class SessionsController < ApplicationController
    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(params[:password])
          session[:user_id] = user.id
          render json: user, status: :created
        else
          render json: {errors: ["Invalid Username or Password"]}, status: :unauthorized
        end
      end
    
      def destroy
        # if user
          session.delete :user_id
          # head :no_content
          render json:()
        # else
        #   render json: {errors: ["Not Authorized"]}, status: :unauthorized
        # end
      end
end
