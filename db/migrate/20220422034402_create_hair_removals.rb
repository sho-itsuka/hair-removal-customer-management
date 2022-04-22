class CreateHairRemovals < ActiveRecord::Migration[6.0]
  def change
    create_table :hair_removals do |t|
      t.integer :treatment_id,     null: false
      t.integer :part_id,          null: false
      t.date :treatment_date,      null: false
      t.text :treatment_memo,      null: false
      t.references :customer,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
