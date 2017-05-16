class MyWine < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :wine

  # Indirect associations

  # Validations

end
