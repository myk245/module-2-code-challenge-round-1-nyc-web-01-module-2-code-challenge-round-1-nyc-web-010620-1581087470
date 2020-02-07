class AppearancesController < ApplicationController
   def new 
      @appearance = Appearance.new
   end 

   def create
      @appearance = Appearance.new(appearance_params)
      if @appearance.save 
         flash[:message] = "Appearance successfully created!"
         redirect_to episode_path(@appearance.episode)
      else 
         flash[:message] = @appearance.errors.full_messages[0]
         render :new
      end 
   end 

   def show
      @appearance = Appearance.find(params[:id])
   end 

   private 

   def appearance_params
      params.require(:appearance).permit(:rating, :guest_id, :episode_id)
   end 

end

# [x] To log that a specific Guest appeared on a certain Episode, we need to create the Appearance model. Make the necessary updates to the schema and models so that:
# [x] Guest can appear on many episodes
# [x] Episode can have multiple guests
# [x] Appearance stores a numeric rating

# [x] A user can fill out a form to create a new Appearance. They can:
# [x] Choose an existing guest from a select dropdown
# [x] Choose an existing episode from a select dropdown
# [x] Enter a numeric rating
# [x] Submit the form
# [x] After submitting the form, the user should be redirected to the selected episode's show page.