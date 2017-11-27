class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string  :name
      t.integer :score, :default => 0
      t.integer :games, :default => 0

      t.timestamps null: false
    end
  end
end
