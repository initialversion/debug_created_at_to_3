class WineTagPair < ApplicationRecord
  # Direct associations

  belongs_to :wine,
             :class_name => "TastingNoteTag",
             :foreign_key => "tag_id"

  belongs_to :tag,
             :class_name => "Wine"

  # Indirect associations

  # Validations

end
