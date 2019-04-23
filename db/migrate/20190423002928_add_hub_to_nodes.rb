class AddHubToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :hub, :string
    add_column :nodes, :cmts, :string
    add_column :nodes, :cmts_port, :integer
    add_column :nodes, :arpd, :string
    add_column :nodes, :arpd_sg, :integer
    add_column :nodes, :fw_mux, :integer
    add_column :nodes, :rtn_mux, :integer
  end
end
