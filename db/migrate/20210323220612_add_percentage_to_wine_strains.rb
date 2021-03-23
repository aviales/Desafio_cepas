class AddPercentageToWineStrains < ActiveRecord::Migration[6.1]
  def change
    add_column :wine_strains, :percentage, :float
   
  end
end
