class Review < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :body, presence: true,
                    length: { minimum: 5 }
#need uniqueness true on the user_id, so that a user can not make more than one review 
end
