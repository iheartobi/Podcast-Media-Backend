class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show, :update]
    
    def index
      users = User.all 
      render json: users
    end
  
    def show
      user = User.find_by(id: params[:id])
      render json: user
    end

    def profile
        render json: { user: current_user }, status: :accepted
     end
 
     def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: @user, jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end


    def edit 
      user = User.find_by(id: params[:id]) 
    end

#     def update
#       user = User.find(params[:id])
#      user.update(user_params)
#      render json: user
#  end

    def update 
      user = User.find_by(id: params[:id])
      user.username = user_params[:username]
      user.email = user_params[:email]
      user.img_url = user_params[:img_url]
      if user.save
      render json: user
      else
        render json: { errors: "Could Not Update" }, status: :unprocessible_entity
      end
    end

    def destroy
      user = User.find_by(id: params[:id])
      user.destroy
      render json: { message: “removed” }, status: :ok
    end
   
    private
   
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end
