class AddTippercentageToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :tip_percentage, :integer
  end
end
