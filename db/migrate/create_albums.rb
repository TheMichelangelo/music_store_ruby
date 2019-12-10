class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :price
      t.string :genre
      t.integer :musician_id

      t.timestamps
    end
  end
end
