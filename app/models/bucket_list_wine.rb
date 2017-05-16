class BucketListWine < ApplicationRecord
  # Direct associations

  belongs_to :wine,
             :counter_cache => true

  # Indirect associations

  # Validations

end
