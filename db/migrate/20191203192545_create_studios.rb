class CreateStudios < ActiveRecord::Migration[5.2]
  def change
    create_table :studios do |t|
      t.string :name
      t.stringfounder :location
      t.integer :musician_id

      t.timestamps
    end
  end
end
