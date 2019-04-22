class AddCutDateToNodes < ActiveRecord::Migration[5.2]
  def change
    add_column :nodes, :cutdate, :date
    add_column :nodes, :origindate, :date
  end
end
