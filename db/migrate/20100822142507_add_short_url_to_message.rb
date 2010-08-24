class AddShortUrlToMessage < ActiveRecord::Migration
  def self.up
    add_column :messages, :short_url, :string
  end

  def self.down
    remove_column :messages, :short_url
  end
end
