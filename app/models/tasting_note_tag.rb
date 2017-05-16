class TastingNoteTag < ApplicationRecord
  # Direct associations

  has_one    :wine_tag_pair,
             :foreign_key => "tag_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
