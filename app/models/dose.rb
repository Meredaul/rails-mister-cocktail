class Dose < ApplicationRecord

  belongs_to :ingredient
  belongs_to :cocktail
  has_attachment :photo_ingredient

  validates :description, presence: true, allow_blank: false
  validates :cocktail, presence: true
  validates :ingredient, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient, message: "Should have one dose of a certain ingredient for a cocktail"}

end
