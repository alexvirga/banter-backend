class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :group_code
      t.integer :bill_total
      t.timestamps
    end
  end
end
