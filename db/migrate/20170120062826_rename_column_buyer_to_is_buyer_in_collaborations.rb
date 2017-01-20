class RenameColumnBuyerToIsBuyerInCollaborations < ActiveRecord::Migration[5.0]
  def change
    rename_column :collaborations, :buyer, :is_buyer
  end
end
