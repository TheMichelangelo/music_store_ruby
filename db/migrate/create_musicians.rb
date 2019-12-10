class CreateMusicians < ActiveRecord::Migration[5.2]
  def change
    create_table :musicians do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.string :home_adress
      t.belongs_to :studio,index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
