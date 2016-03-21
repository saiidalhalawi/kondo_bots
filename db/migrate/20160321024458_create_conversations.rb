class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :statements_count, default: 0
      t.timestamps
    end
  end
end
