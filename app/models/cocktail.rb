class Cocktail < ApplicationRecord

  belongs_to :user

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: { message: "must be given please" }, uniqueness: { case_sensitive: false }

  mount_uploader :photo, PhotoUploader
  validates :photo, presence: { message: "must be given please" }
end
