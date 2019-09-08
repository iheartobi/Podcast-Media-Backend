class CommentsController < ApplicationController
    skip_before_action :authorized
    before_action :find_comment, only: [:update, :destroy]
  
    def index
      @comments = Comment.all
      render json: comments
    end

    def show
      comment = Comment.find_by(id: params[:id])
      render json: comment
    end
  
    def create
      @comment = Comment.create(user_id: params[:user_id], post_id: params[:post_id], comment: params[:comment])
      render json: comment, status: :accepted
    end
  
    def update
      comment.update(comment_params)
      if comment.save
        render json: comment, status: :accepted
      else
        render json: { errors: comment.errors.full_messages }, status: :unprocessible_entity
      end
    end
  
    def destroy
      @comment.destroy
      render json: { message: “removed” }, status: :ok
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:post_id, :comment).merge(user_id: current_user.id)
    end
  
    def find_comment
      comment = Comment.find(params[:id]) 
    end
  
  end

