class BucketListWine < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  belongs_to :wine,
             :counter_cache => true

  # Indirect associations

  # Validations

end
