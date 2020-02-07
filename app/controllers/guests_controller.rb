class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find_by_id(params[:id])
    @appearances = @guest.appearances
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
  # [x] For each Episode, show the:
    # [x] date of the Episode
    # [x] rating for the Appearance 
    
  # Note: Since appearance belongs to both an episode and a guest, we can loop through all appearances
  # belonging to a specific guest and then from there, 
  # call on the appearance episode information as well as the appearance rating


