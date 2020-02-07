class Appearance < ApplicationRecord
   belongs_to :episode
   belongs_to :guest

   validates :rating, inclusion: { in: %w(1..5) }
end

# Validations: 
   # [x] The rating on an Appearance should be between 1 and 5 (inclusive - 1 and 5 are okay).

   # [x] Add a validation to ensure that the rating is between 1 and 5.
   # [x] Add handling for this error to the Appearance create action.
   # [x] The validation error should be shown on the Appearance creation form when a user attempts to save an appearance with an invalid rating.