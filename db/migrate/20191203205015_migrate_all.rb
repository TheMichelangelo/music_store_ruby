class MigrateAll < ActiveRecord::Migration[5.2]
  def change
    drop_table :studios
    drop_table :albums
    drop_table  :musicians

    create_table :studios do |t|
      t.string :name
      t.string :location
      t.string :founder
      t.belongs_to :musicians

      t.timestamps
    end

    create_table :albums do |t|
      t.string :name
      t.integer :price
      t.string :genre
      t.belongs_to :musicians

      t.timestamps
    end

    create_table :musicians do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.string :home_adress
      t.belongs_to :studios

      t.timestamps
    end
  end
end
