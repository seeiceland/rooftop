class CreateRoofs < ActiveRecord::Migration[5.2]
  def change
    create_table :roofs do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
