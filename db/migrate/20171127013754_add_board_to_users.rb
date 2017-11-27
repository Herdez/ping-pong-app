class AddBoardToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :board, index: true, foreign_key: true
  end
end
