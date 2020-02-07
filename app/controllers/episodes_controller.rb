class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
    @guests = @episode.guests
  end 

end

# [x] On the episode show page, a user should see:
# [x] Episode date
# [x] A list of the guests who were on that episode
# [x] Each guest's name should link to the Guest Show page