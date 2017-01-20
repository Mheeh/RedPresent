class AddIsBuyerToCollaborations < ActiveRecord::Migration[5.0]
  def change
    add_column :collaborations, :buyer, :boolean
	  change_column_default :collaborations, :buyer, false
  end
end
