class AddUseridToHeartbeat < ActiveRecord::Migration[5.0]
  def change
    add_column :heartbeats,:user_id,:integer
  end
end
