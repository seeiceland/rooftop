class AddCoordinatesToRoofs < ActiveRecord::Migration[5.2]
  def change
    add_column :roofs, :latitude, :float
    add_column :roofs, :longitude, :float
  end
end
