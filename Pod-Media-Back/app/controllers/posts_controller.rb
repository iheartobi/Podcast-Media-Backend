class PostsController < ApplicationController

    skip_before_action :authorized
    before_action :find_post, only: [:update, :destroy]
  
    def index
      posts = Post.all
      render json: posts
    end
  
    def show
      post = Post.find_by(id: params[:id])
      render json: post
    end

    def create
      post = Post.create(post_params)
      render json: post, status: :accepted
    end
  
    def update
      post = Post.find_by(id: params[:id])
        if post.user_id === current_user.id
        post.content = post_params[:content]
        post.save
        render json: post, status: :accepted
      else
        render json: { errors: post.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    def destroy
      post.destroy
      render json: { message: “removed” }, status: :ok
    end
  
    private
  
    def post_params
      params.require(:post).permit(:user_id, :friend_id, :content).merge(user_id: current_user.id)
    end
  
    def find_post
      post = Post.find(params[:id])
    end
  end
