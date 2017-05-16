class SuggestedWine < ApplicationRecord
  # Direct associations

  belongs_to :user_id_to,
             :class_name => "User"

  belongs_to :wine

  # Indirect associations

  # Validations

end
