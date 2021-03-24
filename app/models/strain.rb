class Strain < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  
  has_many :wine_strains
  has_many :wines, through: :wine_strains, dependent: :destroy
end
