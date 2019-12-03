class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :location
      t.string :founder
      t.integer :musician_id

      t.timestamps
    end
  end
end
