class UsersController < ApplicationController
    skip_before_action :authorized
    
    def index
      users = User.all 
      render json: {users: users}, include: ['posts', 'comments']
      # needs to render posts, comments,
    end
  
    def show
      user = User.find_by(id: params[:id])
      render json: {user: user}
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



    def update 
      user = User.find_by(id: params[:id])
      if user.update(id: params[:id], username: params[:username], bio: params[:bio], img_url: params[:img_url], email: params[:email])
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
      params.require(:user).permit(:username, :password, :bio, :img_url, :email )
    end

end
