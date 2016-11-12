class CreateHeartbeats < ActiveRecord::Migration[5.0]
  def change
    create_table :heartbeats do |t|
      t.string :contact_way, default: 'email'
      t.integer :interval, default: 90
      t.integer :timeout, default: 90
      t.timestamps
    end
  end
end
