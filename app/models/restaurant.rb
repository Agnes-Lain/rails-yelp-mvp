class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATAGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :catagory, :address, presence: true
  validates :catagory, inclusion: { in: CATAGORIES }

  def average_rating
    sum = reviews.inject(0){|sum,review| sum + review.rating }
    sum > 0 ? average = (sum/reviews.size).round : average = 0
  end
end
