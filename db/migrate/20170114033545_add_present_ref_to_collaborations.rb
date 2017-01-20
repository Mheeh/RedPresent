class AddPresentRefToCollaborations < ActiveRecord::Migration[5.0]
  def change
    add_reference :collaborations, :present, foreign_key: true
  end
end
