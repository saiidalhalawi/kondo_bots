class CreateRequestIdioms < ActiveRecord::Migration
  def change
    create_table :request_idioms do |t|
      t.integer :morph_type, limit: 2
      t.string :word
      t.integer :occurences
      t.timestamps
    end
  end
end
