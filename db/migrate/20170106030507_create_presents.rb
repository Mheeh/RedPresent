class CreatePresents < ActiveRecord::Migration[5.0]
  def change
    create_table :presents do |t|
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
