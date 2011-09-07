class FirstTables < ActiveRecord::Migration
  def self.up
    create_table "users" do |t|
      t.string :email
      t.string :name
      t.string :password
      t.timestamps
    end
    
    create_table "virtues" do |t|
      t.string :name
      t.string :description, :limit => 1000
      t.timestamps
    end
  end

  def self.down
    drop_table "users"
    drop_table "virtues"
  end
end
