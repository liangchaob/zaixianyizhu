class CreateLetters < ActiveRecord::Migration[5.0]
  def change
    create_table :letters do |t|
      t.text :content
      t.string :contact_a
      t.string :contact_b
      t.boolean :posted , default: false
      t.boolean :confirmed , default: false
      t.boolean :effect , default: false

      t.timestamps
    end
  end
end
