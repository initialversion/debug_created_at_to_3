class SuggestedWine < ApplicationRecord
  # Direct associations

  belongs_to :user_id_from,
             :class_name => "User",
             :counter_cache => :my_suggestions_for_others_count

  belongs_to :user_id_to,
             :class_name => "User"

  belongs_to :wine

  # Indirect associations

  # Validations

end
