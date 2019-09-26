class AddLeaderIdToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :leader_id, :integer
  end
end
