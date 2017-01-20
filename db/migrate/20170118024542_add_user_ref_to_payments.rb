class AddUserRefToPayments < ActiveRecord::Migration[5.0]
  def change
	  add_reference :payments, :payment_to, references: :users
	  add_foreign_key :payments, :users, column: :payment_to_id
  end
end
