class CreateResults < ActiveRecord::Migration
  def self.up
    create_table :results do |t|
      t.integer :user_virtue_id
      t.date :date
      t.boolean :success
      t.timestamps
    end
  end

  def self.down
    drop_table :results
  end
end
