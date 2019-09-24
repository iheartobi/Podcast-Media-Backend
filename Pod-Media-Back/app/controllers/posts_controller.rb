class PostsController < ApplicationController

    skip_before_action :authorized
    before_action :find_post, only: [:update, :destroy]
  
    def index
      posts = Post.all
      render json: {posts: posts}, include: ['user', 'comments']
    end
  
    def show
      post = Post.find_by(id: params[:id])
      render json: post
    end

    def create
     
      post = Post.new(user_id: params[:post][:user_id], content: params[:post][:content])
      # post = Post.new(post_params)
      if post.save
        render json: post, status: :accepted
      else
        render json: {error: "post not created", status: :not_accepted}
      end
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
      params.permit(:content, :user_id)
    end
  
    def find_post
      post = Post.find(params[:id])
    end
  end
