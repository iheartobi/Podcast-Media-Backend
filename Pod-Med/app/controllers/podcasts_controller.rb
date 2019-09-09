class PodcastsController < ApplicationController
    skip_before_action :authorized
    def index 
        podcasts = Podcast.all 
        render json: podcasts
    end
end
