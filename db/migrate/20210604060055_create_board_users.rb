class CreateBoardUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :board_users do |t|
      t.text :nickname
      t.string :account_id
      t.text :memo

      t.timestamps
    end
  end
end
