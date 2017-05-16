class Varietal < ApplicationRecord
  # Direct associations

  has_many   :wines,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
