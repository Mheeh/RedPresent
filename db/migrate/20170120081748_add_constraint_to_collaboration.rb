class AddConstraintToCollaboration < ActiveRecord::Migration[5.0]
  def change
    add_index :collaborations, [:user_id, :is_buyer]
  end
end
