class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end 

end

# [x] There should be a show page for each Guest. It should display the:
# [x] Guest's name
# [x] Guest's occupation
# [x] On the Guests index page, clicking on a guest's name should navigate to the show page.