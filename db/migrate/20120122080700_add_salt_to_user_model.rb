class AddSaltToUserModel < ActiveRecord::Migration
  def self.up
    add_column :users, :salt, :string, :length => 40
  end

  def self.down
    drop_column :users, :salt
  end
end
