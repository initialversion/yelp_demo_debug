class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood,
             :counter_cache => true

  has_many   :restarant_tags,
             :dependent => :nullify

  has_many   :photos,
             :class_name => "Review",
             :dependent => :destroy

  # Indirect associations

  has_many   :tags,
             :through => :restarant_tags,
             :source => :tag

  has_one    :review_photos,
             :through => :photos,
             :source => :review_photos

  has_many   :city,
             :through => :restaurants,
             :source => :city

  has_many   :reviewers,
             :through => :photos,
             :source => :user

  # Validations

end
