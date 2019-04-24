class AddDetailSowToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :detail_sow, :string
  end
end
