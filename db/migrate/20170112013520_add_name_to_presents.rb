class AddNameToPresents < ActiveRecord::Migration[5.0]
  def change
    add_column :presents, :name, :string
  end
end
