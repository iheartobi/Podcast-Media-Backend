class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def index
      users = User.all 
      render json: users, :only  => [:id, :username, :img_url, :notes]
    end
  
    def show
      user = User.find_by(id: params[:id])
      render json: user, :only => [:username, :img_url]
    end

    def profile
        render json: { user: current_user }, status: :accepted
     end
 
    def create
      @user = User.create(user_params)
      if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      else
        render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end


    def edit 
      user = User.find_by(id: params[:id])  
    end

    def update 
      user = User.find_by(id: params[:id])
      messgae = errors.full_messages
      if user.update(user_params)
      render json: user, :only => [:id, :username, :img_url, :notes]
      # else
      #     render json: => { :error => " Could not update User try again " }
      end
    end

    def destroy
      user = User.find_by(id: params[:id])
      user.destroy
    end
   
    private
   
    def user_params
      params.require(:user).permit(:username, :password, :img_url, :notes)
    end

end
