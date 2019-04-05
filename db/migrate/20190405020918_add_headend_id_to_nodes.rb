class AddHeadendIdToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :headend_id, :integer
  end
end
