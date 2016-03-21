class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.integer :speaker_type, limit: 2
      t.string :name
      t.timestamps
    end
  end
end
