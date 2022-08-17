class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates :measurement, numericality: {less_than: 100_000_000, greater_than: 0}
end
