class Wine < ApplicationRecord
  # Direct associations

  belongs_to :varietal,
             :counter_cache => true

  has_many   :my_wines,
             :dependent => :destroy

  has_many   :wine_tag_pairs,
             :foreign_key => "tag_id",
             :dependent => :destroy

  has_many   :suggested_wines,
             :dependent => :destroy

  has_many   :bucket_list_wines,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
