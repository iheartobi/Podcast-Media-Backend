class LikesController < ApplicationController

    skip_before_action :authorized
    # before_action :find_like, only: [:destroy]
  
    def index
      likes = Like.all
      render json: likes
    end

  #   def show
  #     like = Like.find_by(id: params[:id])
  #     render json: like
  #   end
  
  #   def create
  #     like = Like.create(like_params)
  #     if @like.valid?
  #         render json: like 
  #     else
  #         render json: { error: 'failed to create like' }, status: :not_acceptable
  #     end
  # end
  
  #   # def update
  #   #   post.update(post_params)
  #   #   if post.save
  #   #     render json: post, status: :accepted
  #   #   else
  #   #     render json: { errors: post.errors.full_messages }, status: :unprocessible_entity
  #   #   end
  #   # end
  
  #   def destroy
  #     like.destroy
  #     render json: { message: “removed” }, status: :ok
  #   end
  
  #   private
  
  #   def like_params
  #     params.require(:like).permit(:post_id).merge(user_id: current_user.id)
  #   end
  
  #   def find_like
  #     like = Like.find(params[:id])
  #   end
  end