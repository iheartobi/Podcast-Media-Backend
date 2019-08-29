class PodcastsController < ApplicationController

    def index 
        podcasts = Podcast.all 
        render json: podcasts, :only [:id, :name]
    end

end
