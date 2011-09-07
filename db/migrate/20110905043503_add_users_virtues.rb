class AddUsersVirtues < ActiveRecord::Migration
  def self.up
    create_table :user_virtues do |t|
      t.integer :user_id
      t.string :name
      t.string :description, :limit => 1000
      t.integer :ordinal
    end
  end

  def self.down
    drop_table :user_virtues
  end
end
