class AddPresentRefToBalances < ActiveRecord::Migration[5.0]
  def change
    add_reference :balances, :user, foreign_key: true
	  add_reference :balances, :debt_to, references: :users
	  add_foreign_key :balances, :users, column: :debt_to_id
  end
end
