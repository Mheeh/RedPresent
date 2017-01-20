class AddUserRefToCollaborations < ActiveRecord::Migration[5.0]
  def change
    add_reference :collaborations, :user, foreign_key: true
  end
end
