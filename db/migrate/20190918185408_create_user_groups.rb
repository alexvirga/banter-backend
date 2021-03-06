class CreateUserGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :user_groups do |t|
      t.integer :group_id
      t.integer :user_id
      t.integer :user_payment_amt, :default => 0
      t.timestamps
    end
  end
end
