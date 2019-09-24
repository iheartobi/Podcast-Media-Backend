class RelationshipsController < ApplicationController
    skip_before_action :authorized
    def index 
        relationships = Relationship.all
        render json: relationships, except: [:created_at, :updated_at]
    end

    def show 
        relationship = Relationship.find_by(id: params[:id])
        render json: relationship, except: [:created_at, :updated_at]
    end

    def new 
        relationship = Relationship.new
    end

    def create 
        relationship =  Relationship.new
        if relationship.save
            render json: relationship, except: [:created_at, :updated_at]
        else  
            render json: {error: "Relationship cannot be made!!"}
        end
    end

  def destroy 
    relationship = Relationship.find_by(id: params[:id])
    relationship.destroy
  end
  
end
