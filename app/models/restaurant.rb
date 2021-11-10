class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :category, :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }

  def average_rating
    sum = self.reviews.inject(0){|sum,review| sum + review.rating }
    sum > 0 ? average = (sum/reviews.size).round : average = 0
  end
end
