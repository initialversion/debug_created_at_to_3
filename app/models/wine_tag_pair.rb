class WineTagPair < ApplicationRecord
  # Direct associations

  belongs_to :tag,
             :class_name => "Wine"

  # Indirect associations

  # Validations

end
