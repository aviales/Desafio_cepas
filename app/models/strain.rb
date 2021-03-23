class Strain < ApplicationRecord
  has_many :wine_strains
  has_many :wines, through: :wine_strains, dependent: :destroy
end
