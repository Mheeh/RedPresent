class CreateBalances < ActiveRecord::Migration[5.0]
  def change
    create_table :balances do |t|
      t.float :amount

      t.timestamps
    end
  end
end
