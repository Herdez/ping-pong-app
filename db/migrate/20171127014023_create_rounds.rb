class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :user, index: true
      t.references :game, index: true
      t.integer    :score
      t.date       :date
      t.boolean    :status, :default => false

      t.timestamps null: false
    end
  end
end
