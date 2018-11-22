class AddPhotoToRoofs < ActiveRecord::Migration[5.2]
  def change
    add_column :roofs, :photo, :string
  end
end
