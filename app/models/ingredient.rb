class Ingredient < ApplicationRecord
  belongs_to :recipe
  validates :name, presence: true
  validates :measurement, numericality: {less_than: 100_000_000, greater_than: 0}
end
