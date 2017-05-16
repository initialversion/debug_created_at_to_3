class User < ApplicationRecord
  # Direct associations

  has_many   :reviews,
             :dependent => :nullify

  has_many   :my_suggestions_for_others,
             :class_name => "SuggestedWine",
             :foreign_key => "user_id_from",
             :dependent => :destroy

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
