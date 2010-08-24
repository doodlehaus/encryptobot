class AddMessageHash < ActiveRecord::Migration
  def self.up
    add_column :messages, :message_hash, :text
  end

  def self.down
    remove_column :messages, :message_hash
  end
end
