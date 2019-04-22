class AddStatusToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :cut_complete, :boolean, default: false
  end
end
