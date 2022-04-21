class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :last_name,        null: false
      t.string :first_name,       null: false
      t.string :last_name_kana,   null: false
      t.string :first_name_kana,  null: false
      t.integer :gender_id,       null: false
      t.string :phone_number,     null: false
      t.string :email,            null: false
      t.date :birthday,           null: false
      t.string :postal_code,      null: false
      t.integer :prefecture_id,   null: false
      t.string :city,             null: false
      t.string :address,          null: false
      t.string :building,         null: false
      t.timestamps
      t.references :user,         null: false, foreign_key: true
    end
  end
end
