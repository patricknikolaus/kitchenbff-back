class Ingredient < ApplicationRecord
  validates :name, presence: true
  validates_length_of :ingredient, minimum: 0 
  validates_length_of :ingredient, maximum: 1000000
end
