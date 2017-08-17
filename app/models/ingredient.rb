class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: { message: "must be given please" }, uniqueness: { case_sensitive: false }
end
