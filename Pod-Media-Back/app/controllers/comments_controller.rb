class CommentsController < ApplicationController

    def index
        comments = Comment.all 
        render json: comments.to_json(:include => {
            :user => {:only => [:id, :username]}
        }, :except => [:updated_at, :created_at])
    end

    def show 
        comment = Comment.find_by(id: params[:id])
        render json: comment.to_json(:include => {
            :user => {:only => [:id, :username]}
        }, :except => [:updated_at, :created_at])
    end

    def new 
        comment = Comment.new
    end

    def create 
        comment = Comment.new(comment_params)
        if comment.save
            render json: comment.to_json(:include => {
                :user => {:only => [:id, :username]}
            }, :except => [:updated_at, :created_at])
            else 
                render json: {error: 'Comment could not be displayed'}
      end
    end

    def edit 
        comment = Comment.find_by(id: params[:id])
    end

    def update 
        comment = Comment.find_by(id: params[:id])
        if comment.update(comment_params)
            render json: comment.to_json(:include => {
                :user => {:only => [:id, :username]}
            }, :except => [:updated_at, :created_at])
            else  
                render json: {error: 'Comment failed to update'}
         end
    end

    def destroy 
        comment = Comment.find_by(id: params[:id])
        comment.destroy
    end

    private

    def comment_params 

        params.requre(:comment).permit(:comment)
    end
end

# class SightingsController < ApplicationController
#     def show
#       sighting = Sighting.find_by(id: params[:id])
#       render json: sighting.to_json(:include => {
#         :bird => {:only => [:name, :species]},
#         :location => {:only => [:latitude, :longitude]}
#       }, :except => [:updated_at])
#     end
#   end
