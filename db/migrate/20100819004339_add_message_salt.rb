class AddMessageSalt < ActiveRecord::Migration
  def self.up
    add_column :messages, :message_salt, :string
  end

  def self.down
    remove_column :messages
  end
end
