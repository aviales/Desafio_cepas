class Wine < ApplicationRecord
  has_many :wine_strains
  has_many :strains, through: :wine_strains, dependent: :destroy
end
