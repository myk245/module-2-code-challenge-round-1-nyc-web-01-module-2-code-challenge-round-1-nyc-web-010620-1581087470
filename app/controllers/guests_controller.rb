class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
    @episodes = @guest.episodes
    @appearances = @guest.appearances
    # @appearance_ratings = @appearances.map{|appearance| appearance.rating}
  end 

  def edit
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.find(params[:id])
    @guest.update(guest_params)
    redirect_to guest_path(@guest)
  end 

  private

  def guest_params
    params.require(:guest).permit(:name, :occupation)
  end 

end

# [x] There should be a show page for each Guest. It should display the:
# [x] Guest's name
# [x] Guest's occupation
# [x] On the Guests index page, clicking on a guest's name should navigate to the show page.

# [x] On the Guest show page, add a list of the Episodes the Guest has appeared on.
  # [] For each Episode, show the:
    # [x] date of the Episode
    # rating for the Appearance -- NEED TO COME BACK TO THIS 
    # Show Page: (<ul>Appearance Rating: <%= episode.guest.appearance_rating %></ul>)
      # I don't have time to write out the code, but my logic is:
      # I would iterate through the array of appearances that the guest has 
      # and then map over that to grab the rating
      # on the show page I would then 