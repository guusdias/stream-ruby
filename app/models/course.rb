class Course < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :duration, numericality: { only_integer: true, greater_than: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
