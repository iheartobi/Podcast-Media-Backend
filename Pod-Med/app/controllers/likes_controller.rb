class LikesController < ApplicationController
    skip_before_action :authorized


    def create
        like = Like.create(like_params)
        if like.valid?
            render json: like
        else
            render json: { error: 'No likes' }, status: :not_acceptable
        end
    end


    def destroy
        like = Like.find_by(id: params[:id])
        like.destroy
    end


    private
    def like_params
        params.require(:like).permit(:post_id).merge(user_id: current_user.id)
    end
end
