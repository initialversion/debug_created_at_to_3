class Wine < ApplicationRecord
  # Direct associations

  has_many   :suggested_wines,
             :dependent => :destroy

  has_many   :bucket_list_wines,
             :dependent => :destroy

  has_many   :reviews,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
