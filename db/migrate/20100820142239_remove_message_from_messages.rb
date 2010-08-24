class RemoveMessageFromMessages < ActiveRecord::Migration
  def self.up
    remove_column :messages, :message, :text
  end

  def self.down
    add_column :messages, :message, :text
  end
end
