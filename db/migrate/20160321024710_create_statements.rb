class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.integer :conversation_id
      t.integer :speaker_id
      t.text :content
      t.timestamps
    end
  end
end
