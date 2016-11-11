class ReviewPhoto < ApplicationRecord
  # Direct associations

  belongs_to :review

  # Indirect associations

  has_many   :restaurant,
             :through => :review,
             :source => :restaurant

  # Validations

end
