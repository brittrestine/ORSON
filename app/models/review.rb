class Review < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :body, presence: true,
                    length: { minimum: 5 }
end
