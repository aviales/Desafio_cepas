class Wine < ApplicationRecord
  has_many :wine_strains
  has_many :strains, through: :wine_strains, dependent: :destroy

  def strain_percentage
    @strain_percentage = []
    self.wine_strains.each do |winestrain| 
        @strain_percentage.push("#{winestrain.strain.name} " + "(#{winestrain.percentage} %)") 
    end
    @strain_percentage.sort.join(', ')
  end


end

