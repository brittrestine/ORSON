class Review < ApplicationRecord

  has_many :comments, dependent: :destroy
  validates :body, presence: true,
                    length: { minimum: 5 }
  validates_inclusion_of :rating, in: 1..5
end
