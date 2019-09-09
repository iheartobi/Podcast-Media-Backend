class CommentsController < ApplicationController
    skip_before_action :authorized
    before_action :find_comment, only: [:update, :destroy]
  
    def index
      comments = Comment.all
      render json: comments
    end

    def show
      comment = Comment.find_by(id: params[:id])
      render json: comment
    end
  
    def create
      comment = Comment.create(comment_params)
      render json: comment, status: :accepted
    end
  
    def update
      if comment.update
        render json: comment, status: :accepted
      else
        render json: { errors: "Failed to Update" }, status: :unprocessible_entity
      end
    end
  
    def destroy
      comment.destroy
      render json: { message: “removed” }, status: :ok
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:comment, :post_id, :user_id)
    end
  
    def find_comment
      comment = Comment.find_by(id: params[:id]) 
    end
  
  end
