class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATAGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :catagory, :address, presence: true
  validates :catagory, inclusion: { in: CATAGORIES }
end
