class User < ApplicationRecord
  # Direct associations

  has_many   :wine_suggestions_from_friends,
             :class_name => "SuggestedWine",
             :foreign_key => "user_id_to",
             :dependent => :destroy

  has_many   :my_wines,
             :dependent => :nullify

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
