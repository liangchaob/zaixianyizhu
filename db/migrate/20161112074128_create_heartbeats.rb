class CreateHeartbeats < ActiveRecord::Migration[5.0]
  def change
    create_table :heartbeats do |t|
      t.string :contact_way
      t.integer :interval
      t.integer :timeout
      t.timestamps
    end
  end
end
