class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.integer :price_level
      t.string :room_option
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
