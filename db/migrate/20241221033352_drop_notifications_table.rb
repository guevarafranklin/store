class DropNotificationsTable < ActiveRecord::Migration[8.0]
  def change
    drop_table :notifications
  end
end
