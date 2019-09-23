class CreateUserGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :user_groups do |t|
      t.string :group_id
      t.string :user_id
      t.string :user_payment_amt
      t.timestamps
    end
  end
end
