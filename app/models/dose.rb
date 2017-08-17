class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :amount, presence: true, inclusion: { in: (0..5).to_a }, numericality: true
end
