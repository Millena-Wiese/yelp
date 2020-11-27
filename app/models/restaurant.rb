class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  allowed_values = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in: allowed_values }
  has_many :reviews, dependent: :destroy
end
